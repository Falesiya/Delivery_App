import 'package:deliveryapp/pages/loginpage.dart';
import 'package:deliveryapp/pages/registerpage.dart';
import 'package:flutter/material.dart';

class LoginorReg extends StatefulWidget {
  const LoginorReg({super.key});

  @override
  State<LoginorReg> createState() => _LoginorRegState();
}

class _LoginorRegState extends State<LoginorReg> {
  bool showLoginPage = true;
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {}
    return RegisterPage(onTap: togglePages);
  }
}
