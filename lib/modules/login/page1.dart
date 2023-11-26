import 'package:ecommerce/modules/login/login_screen.dart';
import 'package:ecommerce/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  PageController  _controller= PageController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 60),
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Text('TOKOTO',
                style: TextStyle(color: Color(0xFFFF7643),
                    fontSize: 40.0,
                  fontFamily:'Muli',
                  fontWeight: FontWeight.w500
                ),
              ),
              const Text('Welcome to Tokoto, Let\'s shop!',
                style: TextStyle(color: Colors.grey,
                  fontSize: 20.0,
                    fontFamily:'Muli'
                ),),
              const SizedBox(
                height: 80.0,
              ),
              Container(
                width: 300.0,
                height: 250.0,
                child: PageView(
                  controller: _controller,
                  children:const [
                    Image(image: AssetImage('assets/images/splash_1.png')),
                    Image(image: AssetImage('assets/images/splash_2.png')),
                    Image(image: AssetImage('assets/images/splash_3.png')),
                  ],
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              Container(
                alignment:const Alignment(0,0.5),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect:const ExpandingDotsEffect(
                    dotWidth: 8.0,
                    dotHeight: 8.0,
                    dotColor:  Colors.grey,
                    activeDotColor: Color(0xFFFF7643),
                ),  ),
              ),
              const SizedBox(
                height: 80.0,
              ),
              defaultButton(
                text: 'Continue',
                borderRadius:20.0,
                width: 350.0,
                function: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder:(context)=>const LoginScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
          ),
        )
    );

  }
}

