import 'package:ecommerce/modules/login/register_screen.dart';
import 'package:ecommerce/shared/components/components.dart';
import 'package:flutter/material.dart';

class ForgotScrren extends StatefulWidget {
  const ForgotScrren({super.key});

  @override
  State<ForgotScrren> createState() => _ForgotScrrenState();
}

class _ForgotScrrenState extends State<ForgotScrren> {
  final _formKey = GlobalKey<FormState>();
  var email=TextEditingController();
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
                  const Text('Forgot Password',style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 40.0,
                    fontFamily: 'Muli',
                  ),),
                  const Text('Please enter your email and we will send\n you a link to return to your account',
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      overflow: TextOverflow.visible,
                      color: Colors.grey,
                      fontSize: 18.0,
                      fontFamily: 'Muli',


                    ),),
                  const SizedBox(
                    height: 100.0,
                  ),
                  defaultFormField(
                    controller: email,
                    tybe: TextInputType.emailAddress,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return'email must not be empty ';
                      }
                      return null;
                    },
                    text: 'Enter your email',
                    label: 'email',
                    suffixIcon: Icons.email_outlined,
                    radius: 20.0,
                  ),

                  const SizedBox(
                    height: 80.0,
                  ),
                  defaultButton(
                    text: 'Continue',
                    borderRadius:20.0,
                    width: 350.0,
                    function: () {
                      if (_formKey.currentState!.validate()) {
                        // Form is valid, proceed with submission
                      }
                    },
                  ),
                  const SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text( "Don't have an account?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          overflow: TextOverflow.visible,
                          color: Colors.grey,
                          fontSize: 20.0,
                          fontFamily: 'Muli',

                        ),),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:(context)=>const RegisterScreen(),
                            ),
                          );
                        },
                        child:const Text('Sign in',
                          textAlign: TextAlign.center,
                          style:TextStyle(
                            color: Color(0xFFFF7643),
                            fontSize: 20.0,
                            fontFamily: 'Muli',
                            decorationThickness: 2.0,
                          ),
                        ),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
