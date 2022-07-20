import 'package:electronics_e_commerce/shared/app_color.dart';
import 'package:flutter/material.dart';

import '../shared/app_routes.dart';
import '../shared/image_manger.dart';

class CartScreen  extends StatefulWidget {
   CartScreen ({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int index=3;

  Widget itemCart(){
    return Dismissible(key: ValueKey(index),onDismissed: (direction){
      setState((){
        index--;
      });
    },background: Container(
      decoration: BoxDecoration(
        color: AppColors.hint,
        borderRadius: BorderRadius.circular(15),
        // image:  DecorationImage(
        //   image:AssetImage(ImageAssets.delete2),
        //
        // )
      ),
      child: Image.asset(ImageAssets.delete2),
    ), child: Container(
      width: 330,
      height: 180,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Stack(
              alignment: Alignment.topRight,
              children:[
                Image(image: AssetImage(ImageAssets.ps5),width: 130,height: 150,) ,
                Container(
                  padding: EdgeInsets.all(5),
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(children:  [
                    Text('4.6',style: TextStyle(fontSize: 15,color: AppColors.textColor),),
                    Spacer(),
                    Icon(Icons.star,color: Colors.amber,)
                  ],
                  ),
                )
              ]),


          SizedBox(width: 20,),
          Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              Text('PlayStation 5',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: AppColors.textColor),),
              SizedBox(height: 10,),
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

                    Text('\$ 890.00',style: TextStyle(color: AppColors.textColor,fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('\$900',style: TextStyle(color: AppColors.textColor,fontSize: 10,overflow: TextOverflow.fade,),)
                  ],),
              ),

            ],
          )
        ],
      ),
    ), );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            ListView.separated(itemBuilder: (context,index)=>itemCart(), separatorBuilder: (context,index)=>SizedBox(height: 10,), itemCount: index,scrollDirection: Axis.vertical,shrinkWrap: true,physics: ScrollPhysics(),),
           SizedBox(height: 90,),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 60,width: 200,child: ElevatedButton(onPressed: (){}, child: Text('Check out',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),style: ElevatedButton.styleFrom(primary: AppColors.secondary),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
