import 'package:deliveryapp/pages/homepage.dart';
import 'package:deliveryapp/utils/custombutton.dart';
import 'package:deliveryapp/utils/customtextfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController passwordcontroller = TextEditingController();

  void siginbutton() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lock_open_rounded,
                  size: 100,
                  color: Theme.of(context).colorScheme.inversePrimary),

              const SizedBox(height: 25),

              //Caption-App
              Text("Delivery App",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  )),
              const SizedBox(height: 25),
              CustomTextField(
                controller: emailcontroller,
                hintText: 'Email',
                obsecureText: false,
              ),
              const SizedBox(height: 15),
              CustomTextField(
                controller: passwordcontroller,
                hintText: 'Password',
                obsecureText: true,
              ),
              SizedBox(height: 25),
              Mybutton(
                text: 'Sign In',
                onTap: () => siginbutton(),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a Member?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary)),
                  SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
