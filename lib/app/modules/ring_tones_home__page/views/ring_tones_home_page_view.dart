import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/routes/app_pages.dart';

import '../controllers/ring_tones_home_page_controller.dart';

class RingTonesHomePageView extends GetView<RingTonesHomePageController> {
  const RingTonesHomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.toNamed(Routes.HOME),
            icon: const Icon(Icons.menu)),
        title: const Text('RingTonesHomePageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RingTonesHomePageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
