import 'package:ecommerce/modules/home/home_layout.dart';
import 'package:ecommerce/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final List<String> images=[
     'assets/images/ps4_console_white_1.png',
     'assets/images/ps4_console_white_2.png',
     'assets/images/ps4_console_white_3.png',
     'assets/images/ps4_console_white_4.png',
  ];
  final List<Color> colors=[
    Colors.red,
    Colors.purple,
    Color(0xFFE19879),
    Colors.white,
  ];
  int selectImage=0;
  int selectColor=0;
  int lineText=3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFE7E7E7) ,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      color: Colors.white,

                      onPressed: (){
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder:(context)=> HomeLayout (),
                          ),
                        );
                      },
                      icon: SvgPicture.asset(
                        'assets/icons/Back ICon.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:20),
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding:const EdgeInsets.all(8.0),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('4.8',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: SvgPicture.asset(
                              'assets/icons/Star Icon.svg',
                              width: 15,
                              height: 15,
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
          Column(
            children: [
              Container(
                width: 238,
                child: AspectRatio(aspectRatio:1,
                  child: Image.asset('${images[selectImage]}'),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    images.length,
                        (index) =>prodact(index) ,

                  ),
                ],
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 380,
            margin:const EdgeInsets.only(top: 20),
            padding:const EdgeInsets.only(top: 20),
            decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40) )
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.0),
                    child:  Text('Wireless Controller for PS4™',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        fontFamily: 'Muli',
                      ),),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 64,
                      padding: const EdgeInsets.all(15),
                      decoration:const  BoxDecoration(
                        color: Color(0xFFfeeae3),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
                      ),
                      child:  SvgPicture.asset(
                        'assets/icons/Heart Icon_2.svg',
                       color: Colors.red,
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 64.0),
                    child: Text(maxLines: lineText,
                      'Overall, the wireless controller for PS4™ is a central element in the gaming experience, providing users with the means to interact seamlessly with their favorite games on the PlayStation 4 console. Its ergonomic design, advanced features, and wireless capabilities contribute to an immersive and enjoyable gaming experience.',
                      style:const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontFamily: 'Muli',
                      ),
                    ),
                  ),
                   GestureDetector(
                     onTap: (){
                       setState(() {
                        if(lineText==3){
                          lineText=10;
                        }
                        else
                          lineText=3;
                       });
                     },
                     child: Padding(
                      padding:  const EdgeInsets.symmetric(horizontal: 20.0,
                      vertical: 10),
                      child: Row(
                        children: [
                          Text(lineText==3? 'See More Detail':'See less details',
                         style:const TextStyle(
                           fontSize: 18,
                           fontWeight: FontWeight.w600,
                           color: Colors.orange,
                           fontFamily: 'Muli',
                         ), ),
                          const SizedBox(width: 5,),
                          const Icon(Icons.arrow_forward_ios,size: 12,color: Colors.orange,)
                        ],
                      ),
                  ),
                   ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 93,
                    width: double.infinity,
                    decoration:const  BoxDecoration(
                      color: Color(0xFFE7E7E7),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 20),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ...List.generate(
                            colors.length,
                                (index) =>prodactColor(index) ,

                          ),
                          const SizedBox(width: 60,),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius:25,
                            child: IconButton(
                              onPressed: (){},
                              icon:SvgPicture.asset(
                                'assets/icons/remove.svg',
                                width: 2,
                                height: 4,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                          const SizedBox(width: 13,),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius:25,
                            child: IconButton(
                              onPressed: (){},
                              icon:SvgPicture.asset(
                                'assets/icons/Plus Icon.svg',
                                width: 20,
                                height: 20,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],

              ),
            ),

          ),
          const SizedBox(height: 10,),
          Container(
            padding: EdgeInsetsDirectional.symmetric(vertical: 16.0,horizontal: 60),
            decoration:const  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: defaultButton(text: 'Add To Cart',borderRadius: 20, width: 300, height: 60 ),
          ),
        ],
      ),
    );
  }
  Widget prodactColor(int index)=>GestureDetector(
    onTap: (){
      setState(() {
        selectColor=index;
      },);
    },
    child: Container(
      width: 30,
      height: 30,
      padding:const EdgeInsets.all(13),

      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: colors[index],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: selectColor==index? Colors.orange:Colors.transparent,strokeAlign:12,width:2 ),


      ),
    ),
  );
  Widget prodact(int index)=>GestureDetector(
    onTap: (){

      setState(() {
        selectImage=index;
      },);
    },
    child:Container(

      padding:const EdgeInsets.all(8),

      margin: const EdgeInsets.all(10),

      width:60,

      height: 60,

      decoration: BoxDecoration(

          color: Colors.white,

          borderRadius: BorderRadius.circular(10),

          border: Border.all(color: selectImage==index? Colors.orange:Colors.transparent)

      ),

      child:Image(image: AssetImage('${images[index]}')

      ),),
  );
}

