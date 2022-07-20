import 'package:electronics_e_commerce/layout/cubit/cubit.dart';
import 'package:electronics_e_commerce/layout/states/states.dart';
import 'package:electronics_e_commerce/screens/cart_screen.dart';
import 'package:electronics_e_commerce/screens/home.dart';
import 'package:electronics_e_commerce/screens/profile_screen.dart';
import 'package:electronics_e_commerce/shared/app_color.dart';
import 'package:electronics_e_commerce/shared/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/ps5.dart';
import '../shared/image_manger.dart';

class LayoutScreen extends StatefulWidget  {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selectedIndex = 0;
  Widget home = HomeScreen();
  Widget cart = CartScreen();
  Widget profile = ProfilScreen();

  Widget getBody() {
    if (selectedIndex == 0) {
      return home;
    } else if (selectedIndex == 1) {
      return cart;
    } else {
      return profile;
    }
  }

  void onTapHandler(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     //throw UnimplementedError();
//   }
// }
  Widget itemBuild() {
    return Container(
      height: 400,
      width: 300,
      child: Card(clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 5,
        semanticContainer: true,
        color: AppColors.secondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: const EdgeInsets.all(40),
        // elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('sony',
                    style: TextStyle(fontSize: 13, color: Colors.grey),),
                  Spacer(),
                  ImageIcon(AssetImage(ImageAssets.love))
                ],
              ),
              Text('Playstation 5', style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor),),
              Image(
                image: AssetImage(ImageAssets.ps), height: 150, width: 150,),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: const Color(0xff707070),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white

                          //color: Colors.black,
                          // borderRadius: BorderRadius.circular(10),
                        ),

                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text('\$ 890.00', style: TextStyle(color: AppColors
                            .textColor, fontSize: 18, fontWeight: FontWeight
                            .bold),),
                        Text('\$900', style: TextStyle(color: AppColors
                            .textColor, fontSize: 10, overflow: TextOverflow
                            .fade,),)
                      ],),
                  )
                ],
              )


            ],
          ),
        ),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.primary,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.menu_open_rounded),),
          actions: [
            IconButton(onPressed: () {},
              icon: const Icon(Icons.notifications),
              color: Colors.white,)
          ],
        ),
        body: getBody(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          elevation: 0.0,
          onTap: (int index){
            onTapHandler(index);
          },
          backgroundColor: AppColors.primary,
          unselectedItemColor: AppColors.secondary,
          selectedItemColor: Colors.white,
          unselectedLabelStyle: const TextStyle(color: Colors.white),


          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      drawer: Drawer(
        backgroundColor: AppColors.secondary,
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(45),
                        child: CircleAvatar(radius: 45,child: Image.network(width: 87,height: 90,'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/289931748_3238108543129765_7827806816581937684_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=BT3XW2m71UQAX865lMS&_nc_ht=scontent.fcai20-3.fna&oh=00_AT-y37xkhfWcjEiY___7URCBtkS0dv4JTm__4ovRy7Zhnw&oe=62D8D9AF')),
                      )
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Abdallah',style: TextStyle(color:AppColors.textColor,fontSize: 16,fontWeight: FontWeight.bold),),
                      SizedBox(width: 20,),
                      Text('Abdo@gmail.com',style: TextStyle(color: Colors.grey[500],fontSize: 17,fontWeight: FontWeight.bold),),
                      SizedBox(width: 20,),
                      TextButton(onPressed: (){}, child: Text('Edit Profile'))

                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(title: Text('Home',style: TextStyle(color:AppColors.textColor),),leading: IconButton(onPressed: (){

              },icon: Icon(Icons.home_outlined),color:AppColors.textColor),),
              ListTile(title: Text('Message',style: TextStyle(color:AppColors.textColor)),leading: IconButton(onPressed: (){

              },icon: Icon(Icons.message_outlined),color:AppColors.textColor),),
              ListTile(title: Text('Categories',style: TextStyle(color:AppColors.textColor)),leading: IconButton(onPressed: (){},icon: Icon(Icons.menu_book_rounded),color:AppColors.textColor),),
              ListTile(title: Text('My orders',style: TextStyle(color:AppColors.textColor)),leading: IconButton(onPressed: (){

              },icon: Icon(Icons.shopping_cart_outlined),color:AppColors.textColor),),
              ListTile(title: Text('Notifications',style: TextStyle(color:AppColors.textColor)),leading: IconButton(onPressed: (){},icon: Icon(Icons.notifications_active_rounded),color:AppColors.textColor),),
              ListTile(title: Text('Log out',style: TextStyle(color:AppColors.textColor)),leading: IconButton(onPressed: (){},icon: Icon(Icons.logout),color:AppColors.textColor),)


            ],
          ),
        ),
      ),
    );
  }

}