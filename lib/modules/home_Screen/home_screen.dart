import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:ecommerce/modules/details/details_screen.dart';
import 'package:ecommerce/shared/cubit/cubit.dart';
import 'package:ecommerce/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>AppCubit()..getdataproducts(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (BuildContext context, AppStates stetes){},
        builder: (BuildContext context, AppStates stetes){
          return ConditionalBuilder(
            condition: stetes is! EcommerceLodingStates,
            builder: (context)=> SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 280,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(

                                iconColor: Colors.grey,
                                hintText: 'Search product',
                                labelStyle: const TextStyle(
                                  color: Colors.grey,
                                ),
                                prefixIconColor:Colors.black26 ,
                                enabledBorder:OutlineInputBorder(
                                  borderSide:const BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:const BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:const BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                prefixIcon: IconButton(
                                  icon:Icon(Icons.search_rounded) ,
                                  onPressed: (){

                                  },
                                ),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius:25.0 ,
                            backgroundColor: Colors.black12,
                            child: IconButton(onPressed: (){}, icon:  SvgPicture.asset(
                              'assets/icons/Cart Icon.svg',
                              width: 20,
                              height: 20,
                            ),),
                          ),
                          Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              CircleAvatar(
                                radius:25.0 ,
                                backgroundColor: Colors.black12,
                                child: IconButton(onPressed: (){}, icon:  SvgPicture.asset(
                                  'assets/icons/Bell.svg',
                                  width: 25,
                                  height: 25,
                                ),),
                              ),
                              const CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.red,
                                child:  Text('5',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        width: 390,
                        height: 120,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Color(0xFF000B8C),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child:const Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('A Summer Surpise',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontFamily: 'Muli'

                                ),),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Cashback 20%',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Muli'
                                ),),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color:const Color(0xfffaccb7),
                                      borderRadius: BorderRadius.circular(10)
                                  ) ,
                                  child: IconButton(onPressed: (){}, icon:  SvgPicture.asset(
                                    'assets/icons/Flash Icon.svg',
                                    width: 30,
                                    height: 30,
                                  ),),

                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text('Flash \nDeal',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0,
                                    fontFamily: 'Muli',
                                  ),)
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color:const Color(0xfffaccb7),
                                      borderRadius: BorderRadius.circular(10)
                                  ) ,
                                  child: IconButton(onPressed: (){}, icon:  SvgPicture.asset(
                                    'assets/icons/Bill Icon.svg',
                                    width: 30,
                                    height: 30,
                                  ),),

                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text('Bili',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0,
                                    fontFamily: 'Muli',
                                  ),)
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color:const Color(0xfffaccb7),
                                      borderRadius: BorderRadius.circular(10)
                                  ) ,
                                  child: IconButton(onPressed: (){}, icon:  SvgPicture.asset(
                                    'assets/icons/Game Icon.svg',
                                    width: 30,
                                    height: 30,
                                  ),),

                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text('Game',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0,
                                    fontFamily: 'Muli',
                                  ),)
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color:const Color(0xfffaccb7),
                                      borderRadius: BorderRadius.circular(10)
                                  ) ,
                                  child: IconButton(onPressed: (){}, icon:  SvgPicture.asset(
                                    'assets/icons/Gift Icon.svg',
                                    width: 30,
                                    height: 30,
                                  ),),

                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text('Gift',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 17.0,
                                      fontFamily: 'Muli'
                                  ),)
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color:const Color(0xfffaccb7),
                                      borderRadius: BorderRadius.circular(10)
                                  ) ,
                                  child: IconButton(onPressed: (){}, icon:  SvgPicture.asset(
                                    'assets/icons/Discover.svg',
                                    width: 30,
                                    height: 30,
                                  ),),

                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text('More',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 17.0,
                                      fontFamily: 'Muli'
                                  ),)
                              ],
                            ),

                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 370,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Special for you',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                                fontFamily: 'Muli'
                            ),),
                            TextButton(
                              onPressed: (){
                              },
                              child: const Text('See More',
                                textAlign: TextAlign.center,
                                style:TextStyle(
                                    overflow: TextOverflow.visible,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0,
                                    fontFamily: 'Muli'
                                ),
                              ),),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 17,),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width: 300,
                                  height: 150,
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadiusDirectional.circular(20),
                                        child:const Image(image:AssetImage('assets/images/Image Banner 2.png'),
                                          fit: BoxFit.cover,
                                          width: 300,
                                          height: 150,
                                        ),
                                      ),
                                      Container(
                                        width: 300,
                                        height: 150,
                                        padding: const EdgeInsets.only(left: 12,
                                          bottom: 30,),
                                        decoration: BoxDecoration(
                                          color:Colors.black.withOpacity(0.2) ,
                                          borderRadius: BorderRadiusDirectional.circular(20),
                                        ),
                                        child:const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('SmartPhone',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Muli'
                                              ),),
                                            Text('18 Brands',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Muli'
                                              ),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 300,
                                  height: 150,
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadiusDirectional.circular(20),
                                        child:const Image(image:AssetImage('assets/images/Image Banner 3.png'),
                                          fit: BoxFit.cover,
                                          width: 300,
                                          height: 150,
                                        ),
                                      ),
                                      Container(
                                        width: 300,
                                        height: 150,
                                        padding: const EdgeInsets.only(left: 12,
                                          bottom: 30,),
                                        decoration: BoxDecoration(
                                          color:Colors.black.withOpacity(0.2) ,
                                          borderRadius: BorderRadiusDirectional.circular(20),
                                        ),
                                        child:const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('Fashion',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Muli',
                                              ),),
                                            Text('24 Brands',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Muli'
                                              ),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 370,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Popular Products',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20.0,
                                fontFamily: 'Muli'
                            ),),
                            TextButton(
                              onPressed: (){
                              },
                              child: const Text('See More',
                                textAlign: TextAlign.center,
                                style:TextStyle(
                                    overflow: TextOverflow.visible,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0,
                                    fontFamily: 'Muli'
                                ),
                              ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17,),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...List.generate(
                                AppCubit.get(context).products.length,
                                    (index) =>Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    width: 180,
                                    height: 320,
                                    padding:const EdgeInsets.only(right: 10,left: 10),
                                    decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder:(context)=>const DetailsScreen(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            width: 180,
                                            height: 180,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius:BorderRadius.circular(10),
                                            ),
                                            child: Image(image:NetworkImage(AppCubit.get(context).products[index]['image'],),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        Container(
                                          height: 60,
                                          child: Text(AppCubit.get(context).products[index]['title'],
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style:const TextStyle(
                                                color: Colors.black,
                                                fontSize: 19,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Muli'
                                            ),),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('\$${AppCubit.get(context).products[index]['price']}',
                                              style:const TextStyle(color:Color(0xFFFF7643),fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'Muli'),),
                                            CircleAvatar(
                                              radius: 16,
                                              backgroundColor: AppCubit.get(context).products[index]['isPressed']?  Color(0xFFf3f3f3)  :Color(0xFFfeeae3),
                                              child:IconButton(onPressed: (){
                                                AppCubit.get(context).changePressedIndex(index);
                                              }, icon: AppCubit.get(context).products[index]['isPressed']? SvgPicture.asset(
                                                'assets/icons/Heart Icon.svg',
                                                width: 20,
                                                height: 20,
                                              ):SvgPicture.asset(
                                                'assets/icons/Heart Icon_2.svg',
                                                width: 20,
                                                height: 20,
                                                color: Colors.red,
                                              ),),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ) ,

                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            fallback: (context)=>const Center(child: CircularProgressIndicator(
              color: Color(0xFFFF7643),
            )) ,
          );
        },
      ),
    );
  }
}



