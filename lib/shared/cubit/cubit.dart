import 'package:bloc/bloc.dart';
import 'package:ecommerce/modules/chats_screen/chats_screen.dart';
import 'package:ecommerce/modules/favourite/favourite_screen.dart';
import 'package:ecommerce/modules/home_Screen/home_screen.dart';
import 'package:ecommerce/modules/profile_screen/profile_screen.dart';
import 'package:ecommerce/shared/cubit/states.dart';
import 'package:ecommerce/shared/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit():  super(AppInitialStates());

  static AppCubit get(context)=>BlocProvider.of(context);


  int currentIndex=0;
  List<Widget> Screens=[
    HomeScreen(),
    FavouriteScreen(),
    const ChatsScreen(),
    const ProfileScreen()
  ];

  void changeIndex (int index)
  {
    currentIndex =index;
    emit(AppChangeBottomNavBarStates());
  }
  var search=TextEditingController();

  void changePressedIndex (int index)
  {
    products[index]['isPressed']=!products[index]['isPressed'];
    emit(EcommerceUpditeProductsStates());
  }

  List<dynamic> products=[];
  void getdataproducts()
  {
    emit(EcommerceLodingStates());
    DioHelper.getdata(path:'https://run.mocky.io/v3/c60b55e1-fabf-4fe4-98a2-1f9e9f80ed0a')
        .then((value)
    {
      products=value.data;
      emit(EcommerceGetProductsStates());
      for(var i in products)
      {
        i.addAll({'isPressed':true});
      }
    })
        .catchError((errors)
    {
      emit(EcommerceErrorsProductsStates(errors.toString()));
    });
  }
  List<dynamic> productsLike=[];
  void updateLike(List products){
    for(var i in products)
      {
        if(products[i]['isPressed'])
          {
            productsLike.add(i);
            emit(EcommerceAddProductsLikeStates());
            emit(EcommerceUpditeProductsStates());
          }
      }
}

}