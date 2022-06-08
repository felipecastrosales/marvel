import 'package:flutter/material.dart';

import 'package:marvel/app/pages/splash/splash.dart';
import 'package:marvel/app/pages/home/home.dart';
import 'package:marvel/app/pages/details/details.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return <String, WidgetBuilder>{
      '/splash': (context) => const SplashPage(),
      '/home': (context) => const HomePage(),
      '/details': (context) => const DetailsPage(),
    };
  }
}
