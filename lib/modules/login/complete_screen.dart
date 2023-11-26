import 'package:ecommerce/modules/login/otp_screen.dart';
import 'package:ecommerce/shared/components/components.dart';
import 'package:flutter/material.dart';

class CompleteScreen extends StatefulWidget {
  const CompleteScreen({super.key});

  @override
  State<CompleteScreen> createState() => _CompleteScreenState();
}

class _CompleteScreenState extends State<CompleteScreen> {
  var firstname=TextEditingController();
  var lastname=TextEditingController();
  var phone=TextEditingController();
  var address=TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
                  const Text('Complete Profile',style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 40.0,
                    fontFamily: 'Muli.ttf',
                  ),),
                  const Text('Complete your details or continue\n with social media',
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
                    controller: firstname,
                    tybe: TextInputType.name,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return'first name must not be empty ';
                      }
                      return null;
                    },
                    text: 'Enter your First Name',
                    label: 'First Name',
                    suffixIcon: Icons.perm_identity_outlined,
                    radius: 20.0,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                    controller: lastname,
                    tybe: TextInputType.name,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return'last name must not be empty ';
                      }
                      return null;
                    },
                    text: 'Enter your Last Name',
                    label: 'Last Name',
                    suffixIcon: Icons.perm_identity_outlined,
                    radius: 20.0,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                    controller: phone,
                    tybe: TextInputType.phone,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return'phone must not be empty ';
                      }
                      return null;
                    },
                    text: 'Enter your phone number',
                    label: 'Phone',
                    suffixIcon: Icons.phone_iphone_outlined,
                    radius: 20.0,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                    controller: address,
                    tybe: TextInputType.streetAddress,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return'address must not be empty ';
                      }
                      return null;
                    },
                    text: 'Enter your phone address',
                    label: 'Address',
                    suffixIcon: Icons.location_on_outlined,
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
                            builder:(context)=>const OTPScreen(),
                          ),
                        );
                      }
                    },
                  ),
                  const SizedBox(
                    height: 80.0,
                  ),
                  const Text('By continuing your confirm that you agree\n with our Term and Condition',
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      overflow: TextOverflow.visible,
                      color: Colors.grey,
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
