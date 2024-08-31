import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:to_do_app/core/application_theme.dart';
import 'package:to_do_app/core/route_name.dart';
import 'package:to_do_app/widget/lay_out/lay_out.dart';
import 'package:to_do_app/widget/regester/regester.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isOpsecure = true;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background@3x.png"),
              fit: BoxFit.cover),
          color: Color(0xFFDFECDB)),
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: theme.appBarTheme.backgroundColor,
          title: Text("To Do List", style: theme.textTheme.titleLarge),
        ),
        body: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Welcome back!", style: theme.textTheme.titleLarge),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: emailcontroller,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "please enter your email";
                    }
                    var regex = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                    if (!regex.hasMatch(value)) {
                      return "invalid email";
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Enter your e_mail",
                      suffixIcon: Icon(Icons.email),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: passwordcontroller,
                  obscureText: isOpsecure,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "please enter your password";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Password",
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isOpsecure = !isOpsecure;
                            });
                          },
                          child: Icon(isOpsecure
                              ? Icons.visibility_sharp
                              : Icons.visibility_off_sharp)),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  alignment: Alignment.bottomLeft,
                ),
                onPressed: () {},
                child: Text(
                  "Forgot password?",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(62, 112, 159, 1),
                      padding: EdgeInsets.all(20)),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, RouteNames.layOut);
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Log In",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 30,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  style: ButtonStyle(alignment: Alignment.bottomLeft),
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.regester);
                  },
                  child: Text(
                    "Or Creat New Account",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
