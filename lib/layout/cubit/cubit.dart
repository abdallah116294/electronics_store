import 'package:electronics_e_commerce/layout/layout_screnn.dart';
import 'package:electronics_e_commerce/layout/states/states.dart';
import 'package:electronics_e_commerce/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../screens/cart_screen.dart';

class AppCubit extends Cubit<AppState>
{
  AppCubit():super(InitialState());
  AppCubit get(context)=>BlocProvider.of(context);
  int currentIndex=0;
  List<Widget> screens=[
   const LayoutScreen(),
     CartScreen(),
    const ProfilScreen()
  ];
  List <String>titles=[
    'Home',
    "Cart",
    'Profile'
  ];
  void ChangeBottomNavBar(int index)
  {
    currentIndex=index;
    emit(ChangeBottomNavBarState());
  }
}