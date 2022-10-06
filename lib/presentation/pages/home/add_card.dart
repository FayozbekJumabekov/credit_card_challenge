import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:tenge_bank_task/application/home/home_bloc.dart';
import 'package:tenge_bank_task/infrastructure/models/card/card.dart';
import 'package:tenge_bank_task/infrastructure/services/log_service.dart';
import 'package:tenge_bank_task/presentation/component/app_bar_component.dart';
import 'package:tenge_bank_task/presentation/component/custom_button.dart';
import 'package:tenge_bank_task/presentation/component/custom_text_field.dart';
import 'package:tenge_bank_task/presentation/component/dialog.dart';
import 'package:tenge_bank_task/presentation/component/un_focus_widget.dart';
import 'package:tenge_bank_task/presentation/pages/home/widgets/card.dart';
import 'package:tenge_bank_task/presentation/style/app_colors.dart';
import 'package:tenge_bank_task/presentation/style/app_icons.dart';
import 'package:tenge_bank_task/presentation/style/app_utils.dart';
import 'package:tenge_bank_task/utils/utils.dart';
import '../../../infrastructure/services/image_service.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({Key? key}) : super(key: key);

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController cardNumberController;
  late TextEditingController dateController;

  @override
  void initState() {
    super.initState();
    cardNumberController = TextEditingController();
    dateController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();

    cardNumberController.dispose();
    dateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OnUnFocusTap(
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBarComponent(
              title: 'add_card'.tr(),
              hasLeading: true,
              color: AppColors.primary,
            ),
            body: Form(
              key: formKey,
              child: SingleChildScrollView(
                padding: AppUtils.kPaddingHor16Ver12,
                child: Column(
                  children: [
                    /// Card
                    CardWidget(cardModel: state.cardModel ?? CardModel()),
                    AppUtils.kDividerHeight24,

                    /// Card Number TextField
                    CustomTextField(
                        controller: cardNumberController,
                        onChanged: (value) {
                          context
                              .read<HomeBloc>()
                              .add(HomeEvent.setCardNumber(cardNumber: value));
                          cardNumberController.text;
                        },
                        label: 'card_number'.tr(),
                        keyboardType: TextInputType.number,
                        formatter: [Utils.cardFormatter],
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length <= 18) {
                            return "invalid_card_number".tr();
                          }
                          return null;
                        }),

                    AppUtils.kBoxHeight8,

                    /// Date TextField and Set Image
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// TextField
                        Expanded(
                          child: CustomTextField(
                              controller: dateController,
                              onChanged: (value) {
                                context
                                    .read<HomeBloc>()
                                    .add(HomeEvent.setValidDate(date: value));
                                dateController.text;
                              },
                              label: 'valid_date'.tr(),
                              keyboardType: TextInputType.number,
                              formatter: [Utils.validDateFormatter],
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    value.length <= 4) {
                                  return "invalid_date_number".tr();
                                }
                                return null;
                              }),
                        ),

                        AppUtils.kBoxWith16,

                        /// Add Image Button
                        Expanded(
                          child: CustomButton(
                            onPressed: () {
                              ImageService.showPicker(context,
                                  cropStyle: CropStyle.rectangle,
                                  aspectRatioPresets: [
                                    CropAspectRatioPreset.ratio4x3
                                  ]).then((value) => {
                                    if (value != null)
                                      {
                                        context
                                            .read<HomeBloc>()
                                            .add(HomeEvent.uploadImage(
                                              pickedImage: value.first,
                                            ))
                                      }
                                  });
                            },
                            title: 'set_image'.tr(),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ],
                    ),

                    AppUtils.kBoxHeight24,

                    /// Set Color
                    CustomButton(
                      onPressed: () {
                        DialogUtils.showColorPickDialog(
                          context,
                          okBtnFunction: (color) {
                            context.read<HomeBloc>().add(
                                HomeEvent.setColor(colorValue: color.value));
                            LogService.w(color.toString());
                          },
                        );
                      },
                      title: 'set_color'.tr(),
                      backgroundColor: AppColors.primary,
                    ),
                    AppUtils.kBoxHeight24,
                    SizedBox(
                      height: 100.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: AppIcons.predefinedImages.length,
                        itemBuilder: (ctx, i) => GestureDetector(
                          onTap: () {
                            context.read<HomeBloc>().add(
                                HomeEvent.setPredefinedImage(
                                    assetValue: AppIcons.predefinedImages[i]));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.greyCF),
                              borderRadius: AppUtils.kBorderRadius8,
                            ),
                            margin: AppUtils.kPaddingAll8,
                            height: 40.h,
                            width: 120.w,
                            child: ClipRRect(
                              borderRadius: AppUtils.kBorderRadius8,
                              child: Image.asset(
                                AppIcons.predefinedImages[i],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AppUtils.kBoxHeight24,

                    Text(
                        'Change blur X: ${state.cardModel?.blur?.x ?? 0.toStringAsFixed(2)}'),
                    Slider(
                      min: 0,
                      max: 10,
                      activeColor: AppColors.primary,
                      inactiveColor: AppColors.secondary,
                      value: state.cardModel?.blur?.x ?? 0,
                      label: '${state.cardModel?.blur?.x ?? 0}',
                      onChanged: (value) {
                        context.read<HomeBloc>().add(HomeEvent.setBlur(
                            x: value, y: state.cardModel?.blur?.y ?? 0));
                      },
                    ),
                    AppUtils.kBoxHeight8,
                    Text(
                        'Change blur Y: ${state.cardModel?.blur?.y ?? 0.toStringAsFixed(2)}'),
                    Slider(
                      min: 0,
                      max: 10,
                      activeColor: AppColors.primary,
                      inactiveColor: AppColors.secondary,
                      value: state.cardModel?.blur?.y ?? 0,
                      onChanged: (value) {
                        context.read<HomeBloc>().add(HomeEvent.setBlur(
                            x: state.cardModel?.blur?.x ?? 0, y: value));
                      },
                    ),
                    AppUtils.kBoxHeight24,
                  ],
                ),
              ),
            ),

            /// Save Button
            bottomNavigationBar: Container(
              margin: AppUtils.kPaddingHor16Bottom30,
              color: AppColors.transparent,
              child: CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    context.read<HomeBloc>().add(HomeEvent.saveCard(
                        cardModel: state.cardModel!, context: context));
                  }
                },
                isDisabled: cardNumberController.text.isEmpty ||
                    dateController.text.isEmpty,
                title: 'save'.tr(),
                verticalPadding: 12.h,
                backgroundColor: AppColors.primary,
                titleColor: AppColors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
