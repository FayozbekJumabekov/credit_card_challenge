import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tenge_bank_task/application/home/home_bloc.dart';
import 'package:tenge_bank_task/infrastructure/repositories/home_repo.dart';
import 'package:tenge_bank_task/presentation/pages/home/home.dart';
import '../../infrastructure/services/local_database/db_service.dart';
import '../pages/core/app_widget.dart';
import '../pages/core/no_connection.dart';
import '../pages/home/add_card.dart';

class AppRoutes {
  static PageRoute getAppWidget(
    DBService dbService,
    ConnectivityResult connectivityResult,
  ) =>
      MaterialPageRoute(
        builder: (_) => AppWidget(
          dbService: dbService,
          connectivityX: connectivityResult,
        ),
      );

  static MaterialPageRoute addCard() => MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (context) => HomeBloc(
            HomeRepository(context.read<DBService>()),
          ),
          child: const AddCardPage(),
        ),
      );

  static MaterialPageRoute getHome() => MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (context) => HomeBloc(
            HomeRepository(context.read<DBService>()),
          )..add(const HomeEvent.getCard()),
          child: const HomePage(),
        ),
      );

  static MaterialPageRoute getNetworkNotFound() => MaterialPageRoute(
        builder: (_) => const NoConnection(),
      );

  static PageRoute onGenerateRoute({
    required BuildContext context,
    required bool notConnection,
  }) {
    if (notConnection) {
      return getNetworkNotFound();
    } else {
      return getHome();
    }
  }
}
