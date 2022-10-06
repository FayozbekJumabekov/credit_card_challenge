import 'dart:io';
import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tenge_bank_task/infrastructure/models/card/card.dart';
import 'package:tenge_bank_task/presentation/style/app_icons.dart';
import '../../../style/app_colors.dart';
import '../../../style/app_textStyle.dart';
import '../../../style/app_utils.dart';

class CardWidget extends StatelessWidget {
  final CardModel cardModel;

  const CardWidget({Key? key, required this.cardModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: '1',
      child: Container(
        height: 200.h,
        width: 1.sw,
        decoration: BoxDecoration(
          color: cardModel.color != null
              ? Color(cardModel.color!)
              : AppColors.white,
          borderRadius: AppUtils.kBorderRadius8,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 1),
                blurRadius: 3,
                spreadRadius: 1,
                color: AppColors.black.withOpacity(0.08)),
            BoxShadow(
                offset: const Offset(0, 1),
                blurRadius: 2,
                spreadRadius: 0,
                color: AppColors.black.withOpacity(0.16)),
          ],
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: AppUtils.kBorderRadius8,
              child: (cardModel.image != null)
                  ? Image.file(
                      File(cardModel.image!),
                      width: 1.sw,
                      fit: BoxFit.cover,
                    )
                  : (cardModel.predefinedImage != null)
                      ? Image.asset(
                          cardModel.predefinedImage!,
                          width: 1.sw,
                          fit: BoxFit.cover,
                        )
                      : const SizedBox(),
            ),
            ClipRRect(
              borderRadius: AppUtils.kBorderRadius8,
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: cardModel.blur?.x ?? 0,
                    sigmaY: cardModel.blur?.y ?? 0),
                child: Container(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
            ),

            Padding(
              padding: AppUtils.kPaddingHor16Ver12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Yellow box
                  Container(
                    height: 30.r,
                    width: 40.r,
                    decoration: BoxDecoration(
                        color: AppColors.yellow,
                        borderRadius: AppUtils.kBorderRadius6),
                  ),
                  SvgPicture.asset(
                    cardModel.cardType?.image ?? AppIcons.defaultCard,
                    height: 40.h,
                    width: 50.w,
                  ),
                ],
              ),
            ),

            /// Card Number and Valid date
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    cardModel.cardNumber ?? "**** **** **** ****",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.semiBold24,
                  ),
                  AppUtils.kBoxHeight12,
                  Text(
                    '${"valid".tr()}: ${cardModel.expDate ?? "**/**"}',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.semiBold16,
                  ),
                  AppUtils.kBoxHeight12
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
