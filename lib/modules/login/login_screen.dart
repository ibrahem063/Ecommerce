import 'package:ecommerce/modules/login/forgot_screen.dart';
import 'package:ecommerce/modules/login/register_screen.dart';
import 'package:ecommerce/modules/login/success_screen.dart';
import 'package:ecommerce/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
bool isChecked=false;
var email=TextEditingController();
var password=TextEditingController();
final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          color: Colors.white,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text('Welcome Back',style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 40.0,
                    fontFamily: 'Muli',
                  ),),
                  Container(
                    width: 300,
                    child: const Text('Sign in wih your email and password or continue with social media',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        overflow: TextOverflow.visible,
                      color: Colors.grey,
                      fontSize: 17.0,
                      fontFamily: 'Muli',

                    ),),
                  ),
                  const SizedBox(
                    height: 80.0,
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
                  defaultFormField(
                    controller: password,
                    isPassword: true,
                    tybe: TextInputType.visiblePassword,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return'password must not be empty ';
                      }
                      return null;
                    },
                    text: 'Enter your password',
                    label: 'password',
                    suffixIcon: Icons.lock_open_outlined,
                    radius: 20.0,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Checkbox(
                                value:isChecked,
                                activeColor: Color(0xFFFF7643),
                                onChanged: (value){
                                  setState(() {
                                    isChecked=value!;
                                  });
                                },),
                          ),
                          const Text('Remember me',
                            textAlign: TextAlign.center,

                            style: TextStyle(
                              overflow: TextOverflow.visible,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              fontFamily: 'Muli',
                            ),),
                        ],
                      ),
                       const SizedBox(
                        width: 80.0,
                      ),
                      TextButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:(context)=>const ForgotScrren(),
                              ),
                            );
                          },
                          child: const Text('Forgot Password',
                            textAlign: TextAlign.center,
                            style:TextStyle(
                              decoration: TextDecoration.underline,
                              overflow: TextOverflow.visible,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              textBaseline:TextBaseline.alphabetic ,
                              fontSize: 15.0,
                              fontFamily: 'Muli',
                              decorationThickness: 2.0,
                            ),
                          ),),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  defaultButton(
                    text: 'Continue',
                    borderRadius:20.0,
                    width: 350.0,
                    function: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                            builder:(context)=>const SuccessScreen(),
                      ),
                        );
                      }
                    },
                  ),
              const SizedBox(
                height: 80.0,
              ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius:20.0 ,
                        backgroundColor: Colors.black12,
                        child: IconButton(onPressed: (){}, icon:  SvgPicture.asset(
                          'assets/icons/google-icon.svg',
                          width: 50,
                          height: 50,
                        ),),
                      ),
                      const SizedBox(width: 20.0),
                      CircleAvatar(
                        radius:20.0 ,
                        backgroundColor: Colors.black12,
                        child: IconButton(onPressed: (){}, icon:  SvgPicture.asset(
                          'assets/icons/facebook-2.svg',
                          width: 50,
                          height: 50,
                        ),),
                      ),
                      const SizedBox(width: 20.0),
                      CircleAvatar(
                        radius:20.0 ,
                        backgroundColor: Colors.black12,
                        child: IconButton(onPressed: (){}, icon:  SvgPicture.asset(
                          'assets/icons/twitter.svg',
                          width: 50,
                          height: 50,
                        ),),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
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
