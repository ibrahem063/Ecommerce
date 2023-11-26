import 'package:ecommerce/modules/login/complete_screen.dart';
import 'package:ecommerce/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var email=TextEditingController();
  var password=TextEditingController();
  var ConfirmPassword=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  const Text('Register Account',style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 40.0,
                    fontFamily: 'Muli',
                  ),),
                  const Text('Complete your details or\n continue with social media',
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      overflow: TextOverflow.visible,
                      color: Colors.grey,
                      fontSize: 20.0,
                      fontFamily: 'Muli',

                    ),),
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
                  const SizedBox(
                    height: 20.0,
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
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                    controller: ConfirmPassword,
                    isPassword: true,
                    tybe: TextInputType.visiblePassword,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return'password must not be empty ';
                      }
                      return null;
                    },
                    text: 'Re-enter your password',
                    label: 'confirm password',
                    suffixIcon: Icons.lock_open_outlined,
                    radius: 20.0,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: 'Continue',
                    borderRadius:20.0,
                    width: 350.0,
                    function: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:(context)=>const CompleteScreen(),
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
                    height: 50.0,
                  ),
                  const Text('By continuing your confirm that you agree',
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
            ),
          ),
        ),
      ),
    );
  }
}
