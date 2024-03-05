import 'dart:async';

import 'package:devates/helpers/route_helper.dart';
import 'package:devates/utils/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initSplash();
  }

  void _initSplash() {
    Timer(const Duration(seconds: 3), () {
      context.go(RouteHelper.getInitialRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Theme.of(context).primaryColor,
          Theme.of(context).primaryColor.withOpacity(.8),
          Theme.of(context).primaryColor.withOpacity(.6),
          Theme.of(context).primaryColor.withOpacity(.4),
          Theme.of(context).primaryColor.withOpacity(.2),
          // Theme.of(context).primaryColor.withOpacity(.1),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: const Center(
          child: Blur(
            blur: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AppConstants.appName,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 50),
                ),
                SizedBox(
                  height: 20,
                ),
                CupertinoActivityIndicator(
                  color: Colors.white,
                  radius: 16,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
