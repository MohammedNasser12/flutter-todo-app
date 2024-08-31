import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do_app/core/route_name.dart';
import 'package:to_do_app/widget/login/login.dart';

class Splash extends StatefulWidget {
  static const String routeName = "/";

  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamed(context, RouteNames.login);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/splash_background.png",
              ),
              fit: BoxFit.cover)),
    );
  }
}
