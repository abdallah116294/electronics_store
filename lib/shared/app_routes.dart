import 'package:electronics_e_commerce/layout/cubit/cubit.dart';
import 'package:electronics_e_commerce/layout/layout_screnn.dart';
import 'package:electronics_e_commerce/screens/ps5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/cart_screen.dart';
import '../screens/item_details.dart';

class Routes{
  static const String intial='/';
  static const String ps5='PS5Screen';
  static const String itemDetails='ItemDetails';
  static const String cartScreen='CartScreen';
}
class AppRoutes{
  static Route? onGenerateRoute(RouteSettings routeSettings)
  {
    switch(routeSettings.name)
    {
      case Routes.intial:
        return MaterialPageRoute(builder: (context){
          return const LayoutScreen();
        });
      case  Routes.ps5:
        return MaterialPageRoute(builder: (context){
          return const  PS5Screen();
        });
      case Routes.itemDetails:
        return MaterialPageRoute(builder: (context){
          return const ItemDetails();
        });
      case   Routes.cartScreen:
        return MaterialPageRoute(builder: (context)
        {
          return CartScreen();
        });
    }

  }
}