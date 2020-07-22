import 'package:write/views/forgotpassword/forgotpassword_view.dart';
import 'package:write/views/login/login_view.dart';

import 'core/locator.dart';
import 'core/providers.dart';
import 'core/services/navigator_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/home/home_view.dart';
import 'views/signin/signin_view.dart';

void main() async {
  await LocatorInjector.setupLocator();
  runApp(MainApplication());
}

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProviderInjector.providers,
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/login': (context) => LoginView(),
          '/signup': (context) => SigninView()
        },
        navigatorKey: locator<NavigatorService>().navigatorKey,
        home: HomeView(),
      ),
    );
  }
}