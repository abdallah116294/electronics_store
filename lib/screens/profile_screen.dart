import 'package:electronics_e_commerce/shared/app_color.dart';
import 'package:flutter/material.dart';

class ProfilScreen  extends StatelessWidget {
  const ProfilScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
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
    );
  }
}
