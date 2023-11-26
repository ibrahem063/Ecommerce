

import 'package:ecommerce/shared/components/components.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<EditProfileScreen> {
  var email=TextEditingController();
  var password=TextEditingController();
  var Pincode=TextEditingController();
  var Address=TextEditingController();
  var City=TextEditingController();
  var Country=TextEditingController();
  var Account=TextEditingController();
  var nameAccount=TextEditingController();
  var IFSC=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      const Image(image: AssetImage(
                        'assets/images/Profile Image.png',
                      ),
                        height: 120,
                        width: 120,
                      ),
                      CircleAvatar(
                        backgroundColor:const Color(0xFFFF7643),
                        child: IconButton(
                          icon:const Icon(Icons.camera_alt),
                          onPressed: (){},
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 30.0,top: 40),
                child: Text('Personal Details',
                  style: TextStyle(
                      fontWeight:FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 30.0,top: 25),
                child: defaultFormField(controller:email , tybe: TextInputType.emailAddress, validator: (value){}, text: 'Email@gmail.com', label: 'email',
                radius: 10),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 30.0,top: 10),
                child: defaultFormField(controller:password , tybe: TextInputType.visiblePassword, validator: (value){}, text: '*******', label: 'Password',
                    radius: 10,
                isPassword: true),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 220.0,top: 25),
                child: TextButton(
                  onPressed: (){
                  },
                  child: const Text('Change Password',
                    textAlign: TextAlign.center,
                    style:TextStyle(
                      decoration: TextDecoration.underline,
                      overflow: TextOverflow.visible,
                      color:Color(0xFFFF7643) ,
                      fontWeight: FontWeight.w500,
                      textBaseline:TextBaseline.alphabetic ,
                      fontSize: 18.0,
                      fontFamily: 'Muli.ttf',
                      decorationThickness: 2.0,
                    ),
                  ),),
              ),
              const Divider(
                color: Colors.grey,
                endIndent: 40,
                indent: 40,
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 30.0,top: 40),
                child: Text('Business Address Details',
                  style: TextStyle(
                    fontWeight:FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 30.0,top: 40),
                child: defaultFormField(controller:Pincode , tybe: TextInputType.number, validator: (value){}, text: '0000', label: 'Pincode',
                    radius: 10),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 30.0,top: 10),
                child: defaultFormField(controller:Address , tybe: TextInputType.streetAddress, validator: (value){}, text: 'jordan/amman', label: 'Address',
                    radius: 10),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 30.0,top: 10),
                child: defaultFormField(controller:City , tybe: TextInputType.streetAddress, validator: (value){}, text: 'amman', label: 'City',
                    radius: 10),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 30.0,top: 10),
                child: defaultFormField(controller:Country , tybe: TextInputType.streetAddress, validator: (value){}, text: 'Jordan', label: 'Country',
                    radius: 10),
              ),
              const Divider(
                color: Colors.grey,
                endIndent: 40,
                indent: 40,
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 30.0,top: 40),
                child: Text('Bank Account Details',
                  style: TextStyle(
                    fontWeight:FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 30.0,top: 40),
                child: defaultFormField(controller:Account , tybe: TextInputType.number, validator: (value){}, text: '0000', label: 'Bank Account Number',
                    radius: 10),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 30.0,top: 10),
                child: defaultFormField(controller:nameAccount , tybe: TextInputType.streetAddress, validator: (value){}, text: 'ibrahim khald', label: 'Account Holder’s Name',
                    radius: 10),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 30.0,top: 10),
                child: defaultFormField(controller:IFSC , tybe: TextInputType.streetAddress, validator: (value){}, text: 'XXX186765', label: 'IFSC Code',
                    radius: 10),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(child: defaultButton(text: 'Save',width:180,borderRadius: 10 )),
              const SizedBox(
                height: 20,
              ),
            ]
          ),
      ),
    );
  }
}
