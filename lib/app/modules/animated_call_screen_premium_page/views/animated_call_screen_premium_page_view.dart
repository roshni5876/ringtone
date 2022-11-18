import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animated_call_screen_premium_page_controller.dart';

class AnimatedCallScreenPremiumPageView
    extends GetView<AnimatedCallScreenPremiumPageController> {
  const AnimatedCallScreenPremiumPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedCallScreenPremiumPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AnimatedCallScreenPremiumPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
