import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppUtils {
  AppUtils._();

  /// box
  static const SizedBox kBox = SizedBox.shrink();
  static final SizedBox kBoxWith4 = SizedBox(width: 4.w);
  static final SizedBox kBoxWith8 = SizedBox(width: 8.w);
  static final SizedBox kBoxWith12 = SizedBox(width: 12.w);
  static final SizedBox kBoxWith16 = SizedBox(width: 16.w);
  static SizedBox kBoxHeight2 = SizedBox(height: 2.h);
  static SizedBox kBoxHeight4 = SizedBox(height: 4.h);
  static SizedBox kBoxHeight6 = SizedBox(height: 6.h);
  static SizedBox kBoxHeight8 = SizedBox(height: 8.h);
  static SizedBox kBoxHeight12 = SizedBox(height: 12.h);
  static SizedBox kBoxHeight16 = SizedBox(height: 16.h);
  static SizedBox kBoxHeight24 = SizedBox(height: 24.h);

  /// divider
  static Divider kDivider = Divider(height: 1.h, thickness: 1.h);
  static Divider kDividerHeight24 = Divider(height: 24.h, thickness: 1.h);

  static Padding kPad16Divider = Padding(
    padding: EdgeInsets.only(left: 16.w),
    child: Divider(height: 1.h, thickness: 1.h),
  );
  static Padding kPadHor16Divider = Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Divider(height: 1.h, thickness: 1.h),
  );

  /// spacer
  static const kSpacer = Spacer();

  /// padding
  static EdgeInsets kPaddingAll4 = EdgeInsets.all(4.r);
  static EdgeInsets kPaddingAll6 = EdgeInsets.all(6.r);
  static EdgeInsets kPaddingAll8 = EdgeInsets.all(8.r);
  static EdgeInsets kPaddingAll12 = EdgeInsets.all(12.r);
  static EdgeInsets kPaddingAll16 = EdgeInsets.all(16.r);
  static EdgeInsets kPaddingAll24 = EdgeInsets.all(24.r);
  static EdgeInsets kPaddingHorizontal16 =
      EdgeInsets.symmetric(horizontal: 16.w);
  static EdgeInsets kPaddingHor32Ver20 =
      EdgeInsets.symmetric(horizontal: 32.w, vertical: 20.h);
  static EdgeInsets kPaddingHor16Bottom30 =
      EdgeInsets.only(bottom: 30.h, left: 16.w, right: 16.w);
  static EdgeInsets kPaddingHor16Ver12 =
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h);
  static EdgeInsets kPaddingHor12Ver16 =
      EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h);
  static EdgeInsets kPaddingHor16Ver8 =
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h);
  static EdgeInsets kPaddingHor8Ver4 =
      EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h);

  /// border radius
  static Radius kRadius = Radius.zero;
  static Radius kRadius8 = Radius.circular(8.r);
  static Radius kRadius12 = Radius.circular(12.r);
  static BorderRadius kBorderRadius0 = BorderRadius.all(Radius.circular(0.r));
  static BorderRadius kBorderRadius2 = BorderRadius.all(Radius.circular(2.r));
  static BorderRadius kBorderRadius4 = BorderRadius.all(Radius.circular(4.r));
  static BorderRadius kBorderRadius6 = BorderRadius.all(Radius.circular(6.r));
  static BorderRadius kBorderRadius8 = BorderRadius.all(Radius.circular(8.r));
  static BorderRadius kBorderRadius12 = BorderRadius.all(Radius.circular(12.r));
  static BorderRadius kBorderRadius16 = BorderRadius.all(Radius.circular(16.r));
  static BorderRadius kBorderRadius48 = BorderRadius.all(Radius.circular(48.r));
  static BorderRadius kBorderRadius64 = BorderRadius.all(Radius.circular(64.r));

  /// BoxDecoration
  static final BoxDecoration kTabBarBoxDecoration = BoxDecoration(
    color: AppColors.bgGrey2,
    borderRadius: kBorderRadius8,
  );

  static BoxDecoration kTabBarBoxDecorationDark = BoxDecoration(
    color: AppColors.backgroundDark,
    borderRadius: kBorderRadius8,
  );

  static BoxDecoration kTabBoxDecoration = BoxDecoration(
    color: AppColors.white,
    borderRadius: kBorderRadius8,
  );
  static Size? _currentSize;

  static setCurrentSize(Size u) {
    _currentSize = u;
  }

  static Size get currentSize => _currentSize ?? const Size(375, 812);
}
