import 'dart:io';

import 'package:dummy_online_store/src/config/routes/route_names.dart';
import 'package:dummy_online_store/src/config/routes/routes.dart';
import 'package:dummy_online_store/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DummyOnlineStore extends StatelessWidget {
  const DummyOnlineStore({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: AppColors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: RouteNames.homePage,
      routes: routes,
    );
  }
}
