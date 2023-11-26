import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:ecommerce/modules/details/details_screen.dart';
import 'package:ecommerce/shared/cubit/cubit.dart';
import 'package:ecommerce/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavouriteScreen extends StatelessWidget {

  String? sortItems='sort';
  List<String> Items= ['sort','Cost','Type','Date'];
  var search=TextEditingController();
  @override
  Widget build(BuildContext context) {
       return BlocProvider(
         create: (BuildContext context) =>AppCubit()..getdataproducts(),
         child: BlocConsumer<AppCubit,AppStates>(
           listener: (BuildContext context, AppStates stetes){},
           builder: (BuildContext context, AppStates stetes){
             return ConditionalBuilder(
               condition: AppCubit.get(context).productsLike.isNotEmpty,
               builder: (context)=>SafeArea(
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
                         const SizedBox(height: 20,),
                         Padding(
                           padding: const EdgeInsets.only(right:20,left: 20 ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text('${AppCubit.get(context).productsLike.length} Items',
                                   style:const TextStyle(
                                     fontWeight: FontWeight.w900,
                                     fontSize: 25,
                                     color: Colors.black54,
                                   )),
                               Container(
                                 padding:const EdgeInsets.only(left: 10),
                                 width: 80,
                                 height: 30,
                                 decoration: BoxDecoration(
                                     border: Border.all(strokeAlign: 1,color: Colors.black12),
                                     borderRadius: BorderRadius.circular(10)
                                 ),
                                 child: DropdownButton<String>(
                                   elevation:0,
                                   borderRadius: BorderRadius.circular(10),
                                   style:const TextStyle(
                                     fontSize: 20,
                                     color: Colors.black,
                                     fontWeight: FontWeight.w500,
                                   ),
                                   alignment: Alignment.center,
                                   value:sortItems,
                                   items:Items.map((e)=>
                                       DropdownMenuItem<String>(
                                         child:Text(e),
                                         value: e,)).toList(),
                                   onChanged: (value){
                                     // setState(() {
                                     //   sortItems=value;
                                     // });
                                   },
                                   icon:const Icon(Icons.sort),
                                   //value: sortItems,
                                 ),
                               ),
                             ],
                           ),
                         ),
                         ...List.generate(
                           AppCubit.get(context).productsLike.length,
                               (index) =>Padding(
                             padding: const EdgeInsets.only(left: 20,right: 20),
                             child: SingleChildScrollView(
                               child: Row(
                                 children: [
                                   Expanded(
                                     child: Container(
                                       height: 150,
                                       decoration: BoxDecoration(
                                         borderRadius:BorderRadius.circular(10),
                                       ),
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                               width: 100,
                                               height: 100,
                                               decoration: BoxDecoration(
                                                 color: Colors.grey.withOpacity(0.2),
                                                 borderRadius:BorderRadius.circular(10),
                                               ),
                                               child: Image(image:NetworkImage(AppCubit.get(context).productsLike[index]['image'],),
                                               ),
                                             ),
                                           ),
                                           const SizedBox(
                                             height: 10.0,
                                           ),
                                           Container(
                                             width: 150,
                                             child: Text(AppCubit.get(context).productsLike[index]['title'],
                                               maxLines: 3,
                                               overflow: TextOverflow.ellipsis,
                                               style:const TextStyle(
                                                   color: Colors.black,
                                                   fontSize: 15,
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
                                               Text('\$${AppCubit.get(context).productsLike[index]['price']}',
                                                 style:const TextStyle(color:Color(0xFFFF7643),fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'Muli'),),
                                               CircleAvatar(
                                                 radius: 16,
                                                 backgroundColor: Colors.transparent,
                                                 child:IconButton(onPressed: (){
                                                 }, icon:const Icon(Icons.delete_outline,
                                                   size: 20.0,
                                                   color: Colors.red,

                                                 ),),
                                               ),
                                             ],
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



