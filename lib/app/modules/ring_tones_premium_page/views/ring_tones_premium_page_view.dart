import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ring_tones_premium_page_controller.dart';

class RingTonesPremiumPageView extends GetView<RingTonesPremiumPageController> {
  const RingTonesPremiumPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RingTonesPremiumPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RingTonesPremiumPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
