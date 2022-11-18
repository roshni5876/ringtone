import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animated_call_screen_search_page_controller.dart';

class AnimatedCallScreenSearchPageView
    extends GetView<AnimatedCallScreenSearchPageController> {
  const AnimatedCallScreenSearchPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedCallScreenSearchPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AnimatedCallScreenSearchPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
