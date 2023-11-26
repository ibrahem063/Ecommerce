import 'package:ecommerce/modules/login/login_screen.dart';
import 'package:ecommerce/modules/profile_screen/edit_profile_screen.dart';
import 'package:ecommerce/shared/components/components.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Stack(
                children: [
                  Image(image: AssetImage(
                    'assets/images/Profile Image.png',
                  ),
                    height: 120,
                    width: 120,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  defaultButton(text: 'Edit Profile',width: 300,borderRadius: 20,
                      function: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(context)=>const EditProfileScreen(),
                      ),
                    );
                  }),
                  const Padding(
                    padding:  EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.edit,
                    color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  defaultButton(text: 'Setting',width: 300,borderRadius: 20,),
                  const Padding(
                    padding:  EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.settings,
                        color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  defaultButton(text: 'Logout',width: 300,borderRadius: 20,
                      function: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder:(context)=>const LoginScreen(),
                          ),
                        );
                      }),
                  const Padding(
                    padding:  EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.logout,
                        color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ) );
  }
}
