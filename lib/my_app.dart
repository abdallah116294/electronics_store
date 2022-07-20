import 'package:electronics_e_commerce/shared/app_routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner:false,
    onGenerateRoute: AppRoutes.onGenerateRoute ,
      
    );
  }
}