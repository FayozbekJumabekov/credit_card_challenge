import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../style/app_colors.dart';
import '../../../style/app_textStyle.dart';
import '../../../style/app_utils.dart';

class AddCardWidget extends StatelessWidget {
  final VoidCallback onTap;

  const AddCardWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: '1',
      child: Container(
        width: 1.sw,
        padding: AppUtils.kPaddingHor16Ver12,
        decoration: BoxDecoration(
            color: AppColors.blue7Transparent,
            borderRadius: AppUtils.kBorderRadius8,
            border: Border.all(color: AppColors.greyBD)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: onTap,
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.add_card,
                color: AppColors.primary,
                size: 40.r,
              ),
            ),
            AppUtils.kBoxHeight8,
            Text(
              'add_card'.tr(),
              style: AppTextStyles.medium16.copyWith(color: AppColors.text3),
            ),
          ],
        ),
      ),
    );
  }
}
