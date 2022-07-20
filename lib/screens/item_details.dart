

import 'package:electronics_e_commerce/shared/app_color.dart';
import 'package:flutter/material.dart';

import '../shared/app_routes.dart';
import '../shared/image_manger.dart';

class ItemDetails  extends StatelessWidget {
  const ItemDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,

      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){} ,  icon:Icon(Icons.share),color: AppColors.hint,)
        ],
        elevation: 0.0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back_ios),),
        backgroundColor: AppColors.primary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('PULSE 3D \n Wireless Headset',style: TextStyle(color: AppColors.textColor,fontSize: 24,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top:Radius.circular(20)),
                color: AppColors.secondary
              ),
              child:Column(

                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        children: [

                          Icon(Icons.visibility_outlined,color: AppColors.hint,),
                          Text('1.5k',style: TextStyle(color: AppColors.hint,fontSize: 15),),
                          SizedBox(height: 10,),
                          ImageIcon(AssetImage(ImageAssets.love), color: AppColors.hint,),
                          Text('212',style: TextStyle(color: AppColors.hint,fontSize: 15),),
                          SizedBox(height: 10,),
                          Icon(Icons.shopping_bag,color: AppColors.hint,),
                          Text('120',style: TextStyle(color: AppColors.hint,fontSize: 15),),

                        ],
                      ),
                      Center(
                        child:Align(alignment: Alignment.topRight,child: Image(image: AssetImage(ImageAssets.headphone),height: 300,width: 190,)),
                      ),
                      Row(
                        children: [

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
                          ),

                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('\$180.95',style: TextStyle(fontSize: 18,color: AppColors.textColor,decoration: TextDecoration.lineThrough),),
                          Text('\$179.95',style: TextStyle(fontSize: 33,color: AppColors.textColor,fontWeight: FontWeight.bold),)


                        ],
                      ),
                      Container(
                        width:53 ,
                        height: 29,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(child: Text('24%',style: TextStyle(fontSize: 16,color: Colors.green,fontWeight: FontWeight.bold),)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text('🚚 Prices incl. VAT. \t plus shipping costs',style: TextStyle(color: AppColors.hint,fontSize: 15), ),
                  SizedBox(height: 10,),
                  Text(' Lorem ipsum dolor sit amet, consectetuer adipiscing elit.Aenean commodo ligula eget dolor, Aenean massa.',style: TextStyle(color: AppColors.hint,fontSize: 15), ),
                  SizedBox(height: 10,),
                  Text('Chose Color',style: TextStyle(color: Colors.white,fontSize: 25),),
                  SizedBox( height: 10,),
                  Row(

                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                           // boxShadow:Shadow.lerp(a, b, t),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black

                          //color: Colors.black,
                          // borderRadius: BorderRadius.circular(10),
                        ),

                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white

                          //color: Colors.black,
                          // borderRadius: BorderRadius.circular(10),
                        ),

                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red

                          //color: Colors.black,
                          // borderRadius: BorderRadius.circular(10),
                        ),

                      ),
                    ],
                  ),
                  SizedBox( height: 10,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                      ),
                      width: double.infinity,
                      height: double.infinity,

                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                         // crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            SizedBox(width: 20,),
                            Container(
                              width: 55,
                              height: 70,
                              decoration: BoxDecoration(
                                //shape: BoxShape.circle,
                                color: AppColors.secondary,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: ImageIcon(AssetImage(ImageAssets.love),color:AppColors.hint,),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              width: 190,
                              height: 70,
                              decoration: BoxDecoration(
                                //shape: BoxShape.circle,
                                  color: AppColors.secondary,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child:ElevatedButton(child:Text(' Add to CART',style: TextStyle(color: AppColors.textColor,fontSize: 16),) ,onPressed: (){
                                Navigator.pushNamed(context, Routes.intial[2]);
                              },style: ElevatedButton.styleFrom(primary: AppColors.secondary),)
                            ),

                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}
