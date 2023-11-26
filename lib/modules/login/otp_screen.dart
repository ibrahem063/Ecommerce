import 'dart:async';

import 'package:ecommerce/modules/login/success_screen.dart';
import 'package:ecommerce/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _formKey = GlobalKey<FormState>();
  int resendOTP=60;
  late Timer countdownTimer;
  var num1=TextEditingController();
  var num2=TextEditingController();
  var num3=TextEditingController();
  var num4=TextEditingController();
  @override
  void initState() {
    startTimer();
    super.initState();
  }
  startTimer(){
   countdownTimer=Timer.periodic(const Duration(seconds: 1),
           (timer) {
     setState(() {
       resendOTP=resendOTP-1;
     });
     if(resendOTP<1)
       {
         countdownTimer.cancel();
       }
           });
  }
  stopTimer()
  {
    if(countdownTimer.isActive)
    {
      countdownTimer.cancel();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        foregroundColor: Colors.black,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          color: Colors.white,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text('OTP Verification',style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 40.0,
                    fontFamily: 'Muli',
                  ),),
                  const SizedBox(
                    height: 10.0,
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                       Container(
                         width: 310,
                         child: const Text('We sent your code to +0  792 150 *** This code will expired in',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            overflow: TextOverflow.visible,
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontFamily: 'Muli',

                          ),),
                       ),
                       Padding(
                         padding:const EdgeInsets.only(
                           top: 35,
                           right: 5,
                         ),
                         child: Text('00:${resendOTP}',
                          textAlign: TextAlign.center,
                          style:const TextStyle(
                            overflow: TextOverflow.visible,
                            color: Color(0xFFFF7643),
                            fontWeight: FontWeight.w500,
                            fontSize: 17.0,
                            fontFamily: 'Muli',

                          ),),
                       ),
                    ],
                  ),
                  const SizedBox(
                    height:80.0 ,
                  ),
                   Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextField(
                            controller: num1,
                            onChanged: (value){
                              if(value.length==1)
                                {
                                  FocusScope.of(context).nextFocus();
                                }
                            },
                           decoration:InputDecoration(
                             focusedBorder: OutlineInputBorder(
                               borderSide:const BorderSide(color: Colors.grey),
                               borderRadius: BorderRadius.circular(10.0),
                             ),
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10.0),
                             ),
                            ) ,
                            textAlign: TextAlign.center,
                           style: Theme.of(context).textTheme.headline6,
                            keyboardType:const TextInputType.numberWithOptions(),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextField(
                            controller: num2,
                            onChanged: (value){
                              if(value.length==1)
                              {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration:InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ) ,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType:const TextInputType.numberWithOptions(),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextField(
                            controller: num3,
                            onChanged: (value){
                              if(value.length==1)
                              {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration:InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ) ,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType:const TextInputType.numberWithOptions(),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextField(
                            controller: num4,
                            onChanged: (value){
                              if(value.length==1)
                              {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration:InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ) ,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType:const TextInputType.numberWithOptions(),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                      ],
                  ),
                   ),
                  const SizedBox(
                    height:60.0 ,
                  ),
                  defaultButton(
                    text: 'Continue',
                    borderRadius:20.0,
                    width: 350.0,
                    function: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder:(context)=>const SuccessScreen(),
                        ),
                      );
                      },
                  ),
                  const SizedBox(
                    height:80.0 ,
                  ),
                  TextButton(
                    onPressed: (){
                      setState(() {
                        if(resendOTP==0)
                        {
                          resendOTP=60;
                          startTimer();
                        }

                      });
                    },
                    child: const Text('Resend OTP Code',
                      textAlign: TextAlign.center,
                      style:TextStyle(
                        decoration: TextDecoration.underline,
                        overflow: TextOverflow.visible,
                        color: Colors.grey,
                        textBaseline:TextBaseline.alphabetic ,
                        fontSize: 17.0,
                        fontFamily: 'Muli',
                        decorationThickness: 2.0,
                      ),
                    ),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
