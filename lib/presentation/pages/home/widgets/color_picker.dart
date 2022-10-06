import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../component/custom_button.dart';
import '../../../style/app_colors.dart';
import '../../../style/app_textStyle.dart';

class CustomPickerWidget extends StatefulWidget {
  final Function(Color color) onTap;

  const CustomPickerWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  State<CustomPickerWidget> createState() => _CustomPickerWidgetState();
}

class _CustomPickerWidgetState extends State<CustomPickerWidget> {
  Color pickerColor = const Color(0xff443a49);

  void changeColor(Color color) {
    setState(() {
      // widget.onTap(color);
      pickerColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(24.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'choose_color'.tr(),
            style: AppTextStyles.semiBold20,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 16.h),
          ColorPicker(
            pickerColor: pickerColor,
            onColorChanged: changeColor,
          ),
          SizedBox(height: 24.h),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  title: 'cancel'.tr(),
                  titleColor: AppColors.white,
                  backgroundColor: AppColors.assetsDark,
                  verticalPadding: 10,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: CustomButton(
                  onPressed: () {
                    widget.onTap(pickerColor);
                    Navigator.pop(context);
                  },
                  title: 'submit'.tr(),
                  titleColor: AppColors.white,
                  backgroundColor: AppColors.primary,
                  verticalPadding: 10,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
