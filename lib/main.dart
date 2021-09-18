import 'package:flutter/material.dart';
import 'package:flutter_udemy/modules/bmi/BMI_screen.dart';
import 'package:flutter_udemy/modules/counter/Counter_Screen.dart';
import 'package:flutter_udemy/modules/login/Login_Screen.dart';
import 'package:flutter_udemy/modules/messenger/Messnger_Screen.dart';
import 'package:flutter_udemy/modules/users/Users_Screen.dart';
import 'package:flutter_udemy/modules/home/home_screen.dart';

void main() {
  runApp(udemyAPP());
//  udemyAPP app = udemyAPP();
}

class udemyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false ,
          home:   LoginScreen());

  }
}
