import 'package:flutter/material.dart';
import 'package:instagram_ui/global/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRoutes.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      // TODO : tìm hiểu themeData ?
      theme: ThemeData(
          iconTheme: const IconThemeData(
            color: Color.fromRGBO(40, 40, 40, 1),
          ),
          appBarTheme: const AppBarTheme(
              color: Color.fromARGB(255, 255, 255, 255),
              iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1))),
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
    );
  }
}
