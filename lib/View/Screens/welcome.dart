import 'package:afk_task/Const/constants.dart';
import 'package:afk_task/View/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(onPressed: () {
          navigateTo(context, const LoginScreen());
        }, child: const Text(
            'Welcome',style: TextStyle(fontSize: 30,color: Colors.blue),
        ),
        ),
      ),
    );
  }
}
