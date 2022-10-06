import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tenge_bank_task/presentation/style/app_colors.dart';
import 'package:tenge_bank_task/presentation/style/app_textStyle.dart';
import 'animation_effect.dart';

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final bool isDisabled;

  const CustomOutlinedButton({
    Key? key,
    required this.onPressed,
    this.isDisabled = false,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),
          side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(color: AppColors.grey, width: 1),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 42.w),
          child: Text(
            title,
            style: AppTextStyles.medium14,
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color backgroundColor;
  final String title;
  final Color titleColor;
  final bool isDisabled;
  final double borderWidth;
  final double verticalPadding;

  const CustomButton({
    Key? key,
    required this.onPressed,
    this.isDisabled = false,
    required this.title,
    this.titleColor = const Color(0xffFFFFFF),
    this.backgroundColor = const Color(0xff1D1D1D),
    this.borderWidth = 0.5,
    this.verticalPadding = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationButtonEffect(
      disabled: isDisabled,
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: isDisabled ? AppColors.white : AppColors.grey,
              width: borderWidth.h,
            ),
            color: isDisabled ? AppColors.grey : backgroundColor,
            boxShadow: isDisabled
                ? null
                : const [
                    // Style.blueIconShadow,
                  ]),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: verticalPadding.h, horizontal: 8.w),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.medium16.copyWith(color: titleColor),
          ),
        ),
      ),
    );
  }
}
