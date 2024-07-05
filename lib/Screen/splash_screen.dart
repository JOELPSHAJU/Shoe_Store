// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_shop_app_ui/Screen/shop_home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    GoToHomeScreen(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/splash.jpg',
            width: size.width,
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'images/logo.png',
            width: size.width * .6,
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Future<void> GoToHomeScreen(
    context,
  ) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (c) => const ShopHomePage()));
  }
}
