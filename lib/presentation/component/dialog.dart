import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tenge_bank_task/presentation/pages/home/widgets/color_picker.dart';
import 'package:tenge_bank_task/presentation/style/app_colors.dart';
import 'package:tenge_bank_task/presentation/style/app_textStyle.dart';

import 'custom_button.dart';

class DialogUtils {
  static final DialogUtils _instance = DialogUtils.internal();

  DialogUtils.internal();

  factory DialogUtils() => _instance;

  static void showCustomDialog(
    BuildContext context, {
    required String title,
    String subTitle = '',
    String okBtnText = "ok",
    String cancelBtnText = "cancel",
    bool isTwoButton = true,
    required VoidCallback okBtnFunction,
  }) {
    showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            backgroundColor: AppColors.white,
            insetPadding: EdgeInsets.symmetric(horizontal: 50.w),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(28.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(24.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title.tr(),
                    style: AppTextStyles.semiBold20,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    subTitle.tr(),
                    textAlign: TextAlign.start,
                    style: AppTextStyles.regular12,
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    children: [
                      if (isTwoButton)
                        Expanded(
                          child: CustomButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            title: cancelBtnText.tr(),
                            titleColor: AppColors.white,
                            backgroundColor: AppColors.assetsDark,
                            verticalPadding: 10,
                          ),
                        ),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: CustomButton(
                          onPressed: okBtnFunction,
                          title: okBtnText.tr(),
                          titleColor: AppColors.white,
                          backgroundColor: AppColors.primary,
                          verticalPadding: 10,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  static void showColorPickDialog(
    BuildContext context, {
    required Function(Color color) okBtnFunction,
  }) {
    showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            backgroundColor: AppColors.white,
            insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(28.r),
              ),
            ),
            child: CustomPickerWidget(onTap: okBtnFunction),
          );
        });
  }
}
