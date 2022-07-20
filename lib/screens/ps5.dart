import 'package:electronics_e_commerce/shared/app_color.dart';
import 'package:electronics_e_commerce/shared/app_routes.dart';
import 'package:flutter/material.dart';

import '../shared/image_manger.dart';

class PS5Screen extends StatelessWidget {
  const PS5Screen({Key? key}) : super(key: key);
  Widget itemBuild(BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, Routes.itemDetails) ;
      },
      child: Container(
       // width: 164,
        width: 150,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.secondary,
          gradient:   LinearGradient(
            colors: [
              AppColors.secondary,
              AppColors.primary
            ],
            begin:const FractionalOffset(0.0,0.5),
            end: const FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
        )
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
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
                    Spacer(),
                    ImageIcon(AssetImage(ImageAssets.love),color: AppColors.hint,),

                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: AssetImage(ImageAssets.ps),width:100 ,height: 156,),
                  Container(
                    width: 39,
                    height: 40,

                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(14)
                    ),
                    child: IconButton(icon: Icon(Icons.shopping_cart_outlined,color: AppColors.textColor,),onPressed: (){},),
                  ),
                ],
              ),


              Text('PlayStation 5',style: TextStyle(color: AppColors.textColor,fontSize: 20,fontWeight: FontWeight.w500),),
              SizedBox(height: 30,),
              Row(
                children: [
                  Text('\$ 890.00 ',style: TextStyle(color: AppColors.textColor,fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text('\$ 900',style: TextStyle(color: AppColors.textColor,fontSize: 10,decoration: TextDecoration.lineThrough),),

                ],
              )


            ],
          ),
        ),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
       // scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
         
            children: [
           Center(
             child: ListView.separated(physics: ScrollPhysics(),scrollDirection: Axis.vertical,shrinkWrap: true,itemBuilder: (context,index)=>  Row(
               children: [
                 itemBuild(context),
                 SizedBox(width: 12,),
                 itemBuild(context),
               ],
             ), separatorBuilder: (context,index)=>SizedBox(height: 5,), itemCount: 5),
           )


            ],
          ),
        ),
      ),
    );
  }
}
