import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image/image.dart' as im;
import 'package:image_cropper/image_cropper.dart';
import 'package:path/path.dart' as ph;
import 'package:path_provider/path_provider.dart';
import 'package:tenge_bank_task/presentation/style/app_colors.dart';
import 'package:tenge_bank_task/presentation/style/app_textStyle.dart';
import 'package:uuid/uuid.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

class ImageService {
  static Future<String?> compressImage(File imageFile) async {
    final fileName = ph.basename(imageFile.path);
    var uuid = const Uuid();
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    im.Image? image = im.decodeImage(imageFile.readAsBytesSync());
    if (image == null) {
      return null;
    } else {
      im.Image smallerImage = im.copyResize(image, height: 512);
      var compressedImage = File('$path/i${uuid.v4()}.jpg')
        ..writeAsBytesSync(im.encodeJpg(smallerImage, quality: 90));
      return compressedImage.path;
    }
  }

  static Future<String?> imageCrop(
    String path, {
    CropStyle? cropStyle,
    List<CropAspectRatioPreset>? aspectRatioPresets,
  }) async {
    try {
      CroppedFile? croppedFile = await ImageCropper().cropImage(
        compressFormat: ImageCompressFormat.jpg,
        cropStyle: cropStyle ?? CropStyle.rectangle,
        aspectRatio: aspectRatioPresets != null
            ? aspectRatioPresets.contains(CropAspectRatioPreset.square)
                ? const CropAspectRatio(ratioX: 1, ratioY: 1)
                : aspectRatioPresets.contains(CropAspectRatioPreset.ratio16x9)
                    ? const CropAspectRatio(ratioX: 9, ratioY: 16)
                    : null
            : null,
        aspectRatioPresets: aspectRatioPresets ??
            [CropAspectRatioPreset.original, CropAspectRatioPreset.ratio16x9],
        sourcePath: path,
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Cropper',
              toolbarColor: AppColors.black,
              toolbarWidgetColor: AppColors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: true),
          IOSUiSettings(
            minimumAspectRatio: 1.0,
          )
        ],
      );
      if (croppedFile != null) {
        return croppedFile.path;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  static Future<List<AssetEntity>?> showPicker(BuildContext context,
      {CropStyle? cropStyle,
      List<CropAspectRatioPreset>? aspectRatioPresets,
      bool crop = true,
      int maxAssets = 1,
      List<AssetEntity>? selectedAssets}) async {
    List<AssetEntity>? assets = await showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                  leading:
                      const Icon(Icons.photo_library, color: AppColors.primary),
                  title: Text(
                    'gallery'.tr(),
                    style: AppTextStyles.medium14
                        .copyWith(fontSize: 15.sp, color: AppColors.black),
                  ),
                  onTap: () async {
                    List<AssetEntity>? asset = await _imgFromGallery(context,
                        cropStyle: cropStyle,
                        aspectRatioPresets: aspectRatioPresets,
                        crop: crop,
                        maxAssets: maxAssets,
                        selectedAssets: selectedAssets);
                    if (asset != null && asset.isNotEmpty) {
                      Navigator.of(context).pop(asset);
                    } else {
                      Navigator.of(context).pop(<AssetEntity>[]);
                    }
                  }),
              ListTile(
                leading:
                    const Icon(Icons.photo_camera, color: AppColors.primary),
                title: Text(
                  'camera'.tr(),
                  style: AppTextStyles.medium14
                      .copyWith(fontSize: 15.sp, color: AppColors.text1),
                ),
                onTap: () async {
                  AssetEntity? asset = await _imgFromCamera(context,
                      cropStyle: cropStyle,
                      aspectRatioPresets: aspectRatioPresets,
                      crop: crop);
                  if (asset != null) {
                    Navigator.of(context).pop([asset]);
                  } else {
                    Navigator.of(context).pop(<AssetEntity>[]);
                  }
                },
              ),
              SizedBox(
                height: 24.h,
              ),
            ],
          );
        });
    return assets;
  }

  static Future<AssetEntity?> _imgFromCamera(BuildContext context,
      {CropStyle? cropStyle,
      List<CropAspectRatioPreset>? aspectRatioPresets,
      bool crop = true}) async {
    try {
      AssetEntity? assets = await CameraPicker.pickFromCamera(
        context,
        pickerConfig: const CameraPickerConfig(
          textDelegate: EnglishCameraPickerTextDelegate(),
        ),
      );
      if (assets != null) {
        if (crop) {
          File? file = await assets.file;
          if (file != null) {
            String? path = await imageCrop(file.path,
                cropStyle: cropStyle, aspectRatioPresets: aspectRatioPresets);
            if (path != null) {
              final AssetEntity? fileEntity =
                  await PhotoManager.editor.saveImageWithPath(
                path,
                title: ph.basename(path),
              );
              if (fileEntity != null) {
                return fileEntity;
              } else {
                return null;
              }
            } else {
              return null;
            }
          } else {
            return null;
          }
        } else {
          return assets;
        }
      } else {
        return null;
      }
    } on PlatformException catch (e) {
      EasyLoading.showError('${"image_upload_error".tr()} $e');
      return null;
    }
  }

  static Future<List<AssetEntity>?> _imgFromGallery(BuildContext context,
      {CropStyle? cropStyle,
      List<CropAspectRatioPreset>? aspectRatioPresets,
      bool crop = true,
      required int maxAssets,
      List<AssetEntity>? selectedAssets}) async {
    try {
      List<AssetEntity>? assets = await AssetPicker.pickAssets(
        context,
        pickerConfig: AssetPickerConfig(
          themeColor: AppColors.primary,
          selectedAssets: selectedAssets,
          maxAssets: maxAssets,
          textDelegate: const EnglishAssetPickerTextDelegate(),
          requestType: RequestType.image,
        ),
      );
      if (assets != null && assets.isNotEmpty) {
        if (crop) {
          List<AssetEntity> assetsCrop = [];
          await Future.forEach(assets, (AssetEntity? element) async {
            if (element != null) {
              if (selectedAssets != null
                  ? !selectedAssets.contains(element)
                  : true) {
                File? file = await element.file;
                if (file != null) {
                  String? path = await imageCrop(file.path,
                      aspectRatioPresets: aspectRatioPresets,
                      cropStyle: cropStyle);
                  if (path != null) {
                    final AssetEntity? fileEntity =
                        await PhotoManager.editor.saveImageWithPath(
                      path,
                      title: ph.basename(path),
                    );
                    if (fileEntity != null) {
                      assetsCrop.add(fileEntity);
                    }
                  }
                }
              } else {
                assetsCrop.add(element);
              }
            }
          });
          if (assetsCrop.isNotEmpty) {
            return assetsCrop;
          } else {
            return null;
          }
        } else {
          return assets;
        }
      } else {
        return null;
      }
    } on PlatformException catch (e) {
      EasyLoading.showError('${"image_upload_error".tr()} $e');
      return null;
    }
  }
}
