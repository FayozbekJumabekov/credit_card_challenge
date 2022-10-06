import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tenge_bank_task/application/home/home_bloc.dart';
import 'package:tenge_bank_task/infrastructure/models/card/card.dart';
import 'package:tenge_bank_task/presentation/component/app_bar_component.dart';
import 'package:tenge_bank_task/presentation/component/dialog.dart';
import 'package:tenge_bank_task/presentation/pages/home/widgets/add_new_card.dart';
import 'package:tenge_bank_task/presentation/pages/home/widgets/card.dart';
import 'package:tenge_bank_task/presentation/routes/routes.dart';
import 'package:tenge_bank_task/presentation/style/app_colors.dart';
import 'package:tenge_bank_task/presentation/style/app_icons.dart';
import '../../../infrastructure/services/local_database/db_service.dart';
import '../../style/app_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return ValueListenableBuilder(
          valueListenable: Hive.box(DBService.getDbName).listenable(),
          builder: (BuildContext context, Box box, Widget? child) {
            CardModel? cardModel = context.read<DBService>().loadCard();
            return Scaffold(
                appBar: AppBarComponent(
                  title: 'account'.tr(),
                  color: AppColors.primary,
                  firstIconPath: cardModel != null ? AppIcons.removeCard : "",
                  onFirstButtonPressed: () {
                    DialogUtils.showCustomDialog(
                      context,
                      title: 'remove_card',
                      subTitle: 'ask_remove_card',
                      okBtnText: 'submit',
                      okBtnFunction: () {
                        context
                            .read<HomeBloc>()
                            .add(const HomeEvent.removeCard());
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
                body: SingleChildScrollView(
                  padding: AppUtils.kPaddingHor16Ver12,
                  child: Column(
                    children: [
                      /// Card
                      cardModel != null
                          ? CardWidget(cardModel: cardModel)
                          : AddCardWidget(
                              onTap: () {
                                Navigator.push(context, AppRoutes.addCard());
                              },
                            )
                    ],
                  ),
                ));
          },
        );
      },
    );
  }
}
