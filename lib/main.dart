import 'package:bloc/bloc.dart';
import 'package:ecommerce/modules/login/page1.dart';
import 'package:ecommerce/shared/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';



void main() {
  DioHelper.init();
  runApp(MyApp());

}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {

    return const MaterialApp(
      debugShowCheckedModeBanner:false ,
      home:FirstScreen(),

    );
  }

}



