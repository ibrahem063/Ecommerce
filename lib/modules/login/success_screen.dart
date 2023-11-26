import 'package:ecommerce/modules/home/home_layout.dart';
import 'package:ecommerce/shared/components/components.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                const Image(image: AssetImage('assets/images/success.png'),
                width: 400,
                height: 400),
                const SizedBox(
                  height: 120.0,
                ),
                const Text('Success Login',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 40.0,
                ),),
                const SizedBox(
                  height: 80.0,
                ),
                defaultButton(
                  text: 'Back to home',
                  borderRadius:20.0,
                  width: 350.0,
                  function: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder:(context)=> HomeLayout(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
