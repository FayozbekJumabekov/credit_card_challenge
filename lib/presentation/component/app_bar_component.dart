import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tenge_bank_task/presentation/style/app_colors.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String firstIconPath;
  final String secondIconPath;
  final VoidCallback? onFirstButtonPressed;
  final VoidCallback? onSecondButtonPressed;
  final Color? iconColor;
  final bool hasLeading;
  final Color? color;
  final Color? titleColor;
  final bool? centerTitle;

  const AppBarComponent({
    Key? key,
    this.title = '',
    this.firstIconPath = '',
    this.secondIconPath = '',
    this.onFirstButtonPressed,
    this.onSecondButtonPressed,
    this.iconColor,
    this.color,
    this.titleColor,
    this.centerTitle,
    this.hasLeading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: color,
      leading: hasLeading
          ? IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios,
                color: AppColors.white,
              ),
            )
          : null,
      titleSpacing: (hasLeading) ? 4 : null,
      title: (title.isNotEmpty) ? Text(title) : null,
      centerTitle: centerTitle,
      actions: [
        if (firstIconPath.isNotEmpty)
          IconButton(
            padding: EdgeInsets.zero,
            alignment: Alignment.center,
            onPressed: onFirstButtonPressed,
            icon: SvgPicture.asset(
              firstIconPath,
              color: iconColor,
            ),
          ),
        if (secondIconPath.isNotEmpty)
          IconButton(
            padding: EdgeInsets.zero,
            alignment: Alignment.center,
            onPressed: onSecondButtonPressed,
            icon: SvgPicture.asset(
              secondIconPath,
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
