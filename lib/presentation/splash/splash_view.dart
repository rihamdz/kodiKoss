import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kodikoss/presentation/onboarding/onboaringview.dart';
import 'package:kodikoss/presentation/resources/color_manager.dart';

class splashView extends StatefulWidget {
  const splashView({super.key});

  @override
  State<splashView> createState() => _splashViewState();
}

class _splashViewState extends State<splashView> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(Duration(seconds: 5), _goNext);
  }

  _goNext() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => onBoardingView()),
    );
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 130,
          ),
          Center(
              child: Image(
                  image: AssetImage(
            "assets/images/splash.png",
          ))),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
