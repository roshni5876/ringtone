import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ring_tones_search_page_controller.dart';

class RingTonesSearchPageView extends GetView<RingTonesSearchPageController> {
  const RingTonesSearchPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RingTonesSearchPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RingTonesSearchPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
