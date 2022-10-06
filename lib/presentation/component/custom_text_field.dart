import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tenge_bank_task/presentation/style/app_colors.dart';
import 'package:tenge_bank_task/presentation/style/app_textStyle.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final String subTitle;
  final String hintText;
  final String titleHintText;
  final String label;
  final bool isEmail;
  final bool isPassword;
  final bool obscureText;
  final int? minLines;
  final int? maxLines;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final void Function()? onsuffixIconPressed;
  final void Function()? onprefixIconPressed;
  final void Function()? onPressed;
  final TextInputType keyboardType;
  final String? error;
  final int? maxLength;
  final TextEditingController? controller;
  final List<TextInputFormatter>? formatter;
  final TextAlign textAlign;
  final bool readOnly;
  final bool? expands;
  final double? borderWidth;
  final double? borderRadius;
  final ValueChanged<String>? onChanged;
  final FocusNode? focusNode;
  final Color? fillColor;
  final Color? enableBorderColor;
  final InputBorder? border;
  final EdgeInsets? padding;
  final String? Function(String? value)? validator;
  final bool autofocus;

  const CustomTextField({
    Key? key,
    this.onPressed,
    this.border,
    this.expands,
    this.enableBorderColor,
    this.onsuffixIconPressed,
    this.onprefixIconPressed,
    this.formatter,
    this.borderWidth = 1,
    this.borderRadius,
    this.fillColor,
    this.controller,
    this.hintText = '',
    this.title = '',
    this.subTitle = '',
    this.isPassword = false,
    this.minLines = 1,
    this.maxLines = 2,
    this.isEmail = false,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLength,
    this.obscureText = false,
    this.error,
    this.titleHintText = '',
    this.readOnly = false,
    this.onChanged,
    this.label = '',
    this.focusNode,
    this.textAlign = TextAlign.start,
    this.padding,
    this.validator,
    this.autofocus = false,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.title.isNotEmpty
              ? Text(
                  widget.title,
                  style: AppTextStyles.regular14.copyWith(
                    color:
                        widget.error == null ? AppColors.text1 : AppColors.red,
                  ),
                )
              : const SizedBox(),
          widget.title.isNotEmpty ? SizedBox(height: 6.h) : const SizedBox(),
          widget.titleHintText.isNotEmpty
              ? Text(
                  widget.titleHintText,
                  style: AppTextStyles.regular12.copyWith(
                    color: AppColors.grey,
                  ),
                )
              : const SizedBox(),
          widget.titleHintText.isNotEmpty
              ? SizedBox(height: 6.h)
              : const SizedBox(),
          TextFormField(
            expands: widget.expands ?? false,
            onTap: widget.onPressed,
            textInputAction: TextInputAction.done,
            focusNode: widget.focusNode,
            autofocus: widget.autofocus,
            maxLength: widget.maxLength,
            onChanged: widget.onChanged,
            readOnly: widget.readOnly,
            textAlign: widget.textAlign,
            inputFormatters: widget.formatter,
            minLines: widget.minLines,
            maxLines: widget.maxLines,
            controller: widget.controller,
            style: AppTextStyles.regular14.copyWith(color: AppColors.text1),
            obscureText: widget.obscureText,
            keyboardType: widget.keyboardType,
            validator: widget.validator,
            decoration: InputDecoration(
              label: widget.label.isNotEmpty
                  ? Text(
                      widget.label,
                      style: const TextStyle(color: AppColors.grey),
                    )
                  : null,
              counterText: widget.maxLength == 500 ? null : '',
              suffixIcon: widget.suffixIcon != null
                  ? IconButton(
                      icon: widget.suffixIcon!,
                      onPressed: widget.onsuffixIconPressed ?? () {})
                  : null,
              prefixIcon: widget.prefixIcon != null
                  ? IconButton(
                      icon: widget.prefixIcon!,
                      onPressed: widget.onprefixIconPressed ?? () {})
                  : null,
              focusColor: AppColors.secondary,
              fillColor: widget.fillColor ?? AppColors.transparent,
              filled: true,
              border: widget.border ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide:
                        const BorderSide(color: AppColors.grey, width: 1),
                  ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.r),
                borderSide: BorderSide(
                    color: widget.enableBorderColor ?? AppColors.grey,
                    width: widget.borderWidth ?? 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.r),
                borderSide: BorderSide(
                    color: AppColors.black, width: widget.borderWidth ?? 1),
              ),
              hintText: widget.hintText,
              hintStyle: AppTextStyles.regular14.copyWith(
                color: AppColors.grey,
              ),
              errorText: widget.error,
              errorStyle:
                  AppTextStyles.regular12.copyWith(color: AppColors.red),
              contentPadding:
                  EdgeInsets.only(left: 16.w, top: 12.h, right: 12.w),
            ),
          ),
          widget.subTitle.isNotEmpty ? SizedBox(height: 6.h) : const SizedBox(),
          widget.subTitle.isNotEmpty
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.subTitle,
                      style: AppTextStyles.regular14.copyWith(
                          color: widget.error == null
                              ? AppColors.text1
                              : AppColors.red,
                          fontSize: 12.sp),
                    ),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
