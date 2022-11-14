import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ring_tones_favorites_page_controller.dart';

class RingTonesFavoritesPageView
    extends GetView<RingTonesFavoritesPageController> {
  const RingTonesFavoritesPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RingTonesFavoritesPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RingTonesFavoritesPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
