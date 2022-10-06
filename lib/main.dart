import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tenge_bank_task/presentation/pages/core/app_widget.dart';
import 'domain/common/app_init.dart';

void main() async {
  await Hive.initFlutter();
  await AppInit.create;

  runApp(
    ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () {
          return EasyLocalization(
            supportedLocales: const [Locale('en', 'US')],
            path: 'assets/translation',
            fallbackLocale: const Locale('en', 'US'),
            child: AppWidget(
              dbService: AppInit.dbService!,
              connectivityX: AppInit.connectivityX!,
            ),
          );
        }),
  );
}
