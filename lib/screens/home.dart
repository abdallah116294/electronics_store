import 'package:electronics_e_commerce/screens/ps5.dart';
import 'package:flutter/material.dart';

import '../shared/app_color.dart';
import '../shared/app_routes.dart';
import '../shared/image_manger.dart';

class HomeScreen  extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  Widget itemBuild(){
    return Container(
      height: 400,
      width: 300,
      child: Card(clipBehavior: Clip.antiAliasWithSaveLayer,elevation: 5,semanticContainer: true,color: AppColors.secondary,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
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
                  Text('sony',style: TextStyle(fontSize: 13,color: Colors.grey),),
                  Spacer(),
                  ImageIcon(AssetImage(ImageAssets.love))
                ],
              ),
              Text('Playstation 5',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: AppColors.textColor),),
               Image(image:  AssetImage(ImageAssets.ps),height: 150,width: 150,) ,
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

                        Text('\$ 890.00',style: TextStyle(color: AppColors.textColor,fontSize: 18,fontWeight: FontWeight.bold),),
                        Text('\$900',style: TextStyle(color: AppColors.textColor,fontSize: 10,overflow: TextOverflow.fade,),)
                      ],),
                  )
                ],
              )


            ],
          ),
        ) ,),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text('Categories',style: TextStyle(color: Colors.white,fontSize: 29,fontWeight: FontWeight.bold),) ,
          const SizedBox(height: 20,),
          DefaultTabController(length: 4, child:Column(crossAxisAlignment: CrossAxisAlignment.stretch,children: [
            Container(
              child:  TabBar(
                  onTap: ( index){
                    Navigator.of(context,rootNavigator: true).pushNamed(Routes.ps5);
                  },
                  indicatorColor: Colors.transparent,
                  labelStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(text: 'All',),
                    Tab(text: 'PS5'),
                    Tab(text:'PS4'),
                    Tab(text: 'Xboxone',)
                  ]
              ),
            ),
            Container(
              height: 500,
              //width: double.infinity,
              // width: double.infinity,
              child:  TabBarView(
                children: [

                  Container(
                      height: 500,
                      child:Column(
                        children: [
                          Row (
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [

                                    Container(
                                      width: 250,
                                      padding: const EdgeInsets.all(20.0),
                                      decoration: BoxDecoration(
                                        color: AppColors.secondary,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        children: [
                                          Text('search Products',style: TextStyle(color: AppColors.textColor),),
                                          const Spacer(),
                                          Icon(Icons.search,color: AppColors.textColor,)
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width:20),
                                    Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: AppColors.secondary,
                                          borderRadius: BorderRadius.circular(15) ,
                                        ),child: IconButton(onPressed: (){},icon:const Icon(Icons.clear_all))) ,
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          // itemBuild()
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              color: AppColors.primary,
                              width: 300,
                              // width: double.infinity,
                              height: 400,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                //  physics: NeverScrollableScrollPhysics(),
                                child: Row(
                                  children: [
                                    AnimatedContainer(duration: const Duration(seconds: 3),
                                      width: 300,
                                      height: 400,
                                      color: AppColors.primary,
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child:ListView.separated(shrinkWrap: true,scrollDirection: Axis.horizontal,itemBuilder: (context,index)=>itemBuild(), separatorBuilder:(context,index)=>SizedBox(width: 10,), itemCount: 6),
                                    ),
                                    //  ListView.separated(shrinkWrap: true,scrollDirection: Axis.horizontal,itemBuilder: (context,index)=>itemBuild(), separatorBuilder:(context,index)=>SizedBox(width: 20,), itemCount: 6),
                                  ],
                                ),
                              ),
                            ),
                          )

                        ],)


                  ),
                  Container(width:164,child: PS5Screen()),
                  Container(width:164,child: PS5Screen()),
                  Container(width:164,child: PS5Screen()),
                ],
              ),
            )
          ],))
        ],
      ),
    );
  }
}
