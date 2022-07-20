import 'dart:async';

import 'package:electronics_e_commerce/shared/image_manger.dart';
import 'package:flutter/material.dart';

import '../shared/app_routes.dart';

class SplashScreen  extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  goNext()=>Navigator.pushReplacementNamed(context, Routes.intial);
  _startDelay()
  {
    _timer=Timer(const Duration(milliseconds: 2000), ()=>goNext());
  }
  @override
  void initState()
  {
    super.initState();
    _startDelay();
  }
  @override
  void dispose()
  {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(ImageAssets.ps5 , height: 200,width: 200,),),
    );
  }
}
