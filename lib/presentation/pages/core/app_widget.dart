import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../infrastructure/services/local_database/db_service.dart';
import '../../routes/routes.dart';

class AppWidget extends StatelessWidget {
  final DBService dbService;
  final ConnectivityResult connectivityX;

  const AppWidget(
      {Key? key, required this.dbService, required this.connectivityX})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => dbService),
      ],
      child: MaterialApp(
          builder: EasyLoading.init(),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(
                context: context,
                notConnection: connectivityX == ConnectivityResult.none,
              )),
    );
  }
}
