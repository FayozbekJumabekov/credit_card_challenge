import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenge_bank_task/presentation/style/app_colors.dart';

class AppLoadingComponent extends StatelessWidget {
  final bool showLoadingTextForIOS;

  const AppLoadingComponent({
    Key? key,
    this.showLoadingTextForIOS = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Platform.isAndroid
          ? SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.blue),
                ),
              ),
            )
          : SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const CupertinoActivityIndicator(),
                  Visibility(
                    visible: showLoadingTextForIOS,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Loading'),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
