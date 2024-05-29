import 'package:deliveryapp/utils/custombutton.dart';
import 'package:deliveryapp/utils/customtextfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController passwordcontroller = TextEditingController();

  final TextEditingController confirmpass = TextEditingController();

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
              Text("Let's Create an account for you?",
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
              CustomTextField(
                controller: confirmpass,
                hintText: 'Confirm Password',
                obsecureText: true,
              ),
              SizedBox(height: 25),
              Mybutton(
                text: 'Sign Up',
                onTap: () {},
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary)),
                  SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Login Here",
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
