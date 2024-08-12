import 'package:flutter/material.dart';
import 'package:instagram_ui/screen/home/home.dart';

class AppRoutes {
  static MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => makeRoute(
          nameRoute: settings.name!,
          context: context,
          agruments: settings.arguments),
    );
  }

  static makeRoute(
      {required String nameRoute,
      required BuildContext context,
      Object? agruments}) {
    switch (nameRoute) {
      case home:
        return const Home();

      default:
        throw "$nameRoute is not define !";
    }
  }

  static const String home = '/';
}
