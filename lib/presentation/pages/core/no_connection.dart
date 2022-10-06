import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tenge_bank_task/domain/common/connectivity_ext.dart';
import 'package:tenge_bank_task/presentation/style/app_colors.dart';
import 'package:tenge_bank_task/presentation/style/app_textStyle.dart';
import '../../../infrastructure/services/connectivity.dart';
import '../../../infrastructure/services/local_database/db_service.dart';
import '../../component/custom_button.dart';
import '../../routes/routes.dart';

class NoConnection extends StatefulWidget {
  const NoConnection({Key? key}) : super(key: key);

  @override
  State<NoConnection> createState() => _NoConnectionState();
}

class _NoConnectionState extends State<NoConnection> {
  Future<void> retry() async {
    EasyLoading.show();
    final result = await ConnectivityX.create;
    if (result.hasNetworkConnection) {
      DBService.create.then((value) => Navigator.pushAndRemoveUntil(
          context, AppRoutes.getAppWidget(value, result), (route) => false));
      EasyLoading.dismiss();
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Center(
            //   child: SvgPicture.asset(c.isDark
            //       ? icons.noConnectionDarkSvg
            //       : icons.noConnectionLightSvg),
            // ),
            SizedBox(height: 25.h),
            Text('connection_is_afk'.tr(), style: AppTextStyles.medium20),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.w),
              child: Text(
                'no_connection_body'.tr(),
                textAlign: TextAlign.center,
                style: AppTextStyles.medium14,
              ),
            ),
            SizedBox(height: 20.h),
            CustomOutlinedButton(
              onPressed: retry,
              title: 'retry'.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
