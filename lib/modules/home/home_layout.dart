
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:ecommerce/modules/chats_screen/chats_screen.dart';
import 'package:ecommerce/modules/favourite/favourite_screen.dart';
import 'package:ecommerce/modules/home_Screen/home_screen.dart';
import 'package:ecommerce/modules/profile_screen/profile_screen.dart';
import 'package:ecommerce/shared/cubit/cubit.dart';
import 'package:ecommerce/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeLayout extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>AppCubit(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (BuildContext context, AppStates stetes){},
        builder:(BuildContext context, AppStates stetes){
          return Scaffold(
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      spreadRadius: 0.5,
                      blurRadius: 10,
                      offset: const Offset(0,5),
                    ),
                  ]
              ),
              child: ClipRRect(
                borderRadius:const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                child: BottomNavigationBar(
                  elevation: 0,
                  showSelectedLabels: false,
                  currentIndex: AppCubit.get(context).currentIndex,
                  onTap: (index){
                    AppCubit.get(context).changeIndex(index);
                  },
                  items:[
                    BottomNavigationBarItem(icon: SvgPicture.asset(
                      'assets/icons/Shop Icon.svg',
                      width: 25,
                      height: 25,
                      color: AppCubit.get(context).currentIndex==0? const Color(0xFFFF7643):Colors.grey,
                    ), label: 'Home'),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/icons/Heart Icon.svg',
                        width: 25,
                        height: 25,
                        color: AppCubit.get(context).currentIndex==1? const Color(0xFFFF7643):Colors.grey,
                      ),
                      label: 'Like',
                    ),
                    BottomNavigationBarItem(icon: SvgPicture.asset(
                      'assets/icons/Chat bubble Icon.svg',
                      width: 25,
                      height: 25,
                      color: AppCubit.get(context).currentIndex==2? const Color(0xFFFF7643):Colors.grey,
                    ),label: 'Chats' ),
                    BottomNavigationBarItem(icon: SvgPicture.asset(
                      'assets/icons/User Icon.svg',
                      width: 25,
                      height:25,
                      color: AppCubit.get(context).currentIndex==3? const Color(0xFFFF7643):Colors.grey,
                    ),label: 'Profile' ),
                  ],),
              ),
            ),
            body:ConditionalBuilder(
              fallback:(context)=> const Center(child: CircularProgressIndicator(
                color: Color(0xFFFF7643),
              )) ,
              builder: (context)=>AppCubit.get(context).Screens[AppCubit.get(context).currentIndex],
              condition: stetes is! EcommerceLodingStates,
            ),
          );
        } ,
      ),
    );
  }

}
