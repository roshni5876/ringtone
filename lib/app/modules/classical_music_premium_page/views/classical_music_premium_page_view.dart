import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/classical_music_premium_page_controller.dart';

class ClassicalMusicPremiumPageView
    extends GetView<ClassicalMusicPremiumPageController> {
  const ClassicalMusicPremiumPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClassicalMusicPremiumPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ClassicalMusicPremiumPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
