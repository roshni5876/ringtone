import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animated_call_screen_favorites_page_controller.dart';

class AnimatedCallScreenFavoritesPageView
    extends GetView<AnimatedCallScreenFavoritesPageController> {
  const AnimatedCallScreenFavoritesPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedCallScreenFavoritesPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AnimatedCallScreenFavoritesPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
