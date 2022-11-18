import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/modules/animated_call_screen_page/controllers/animated_call_screen_page_controller.dart';

import '../controllers/animated_call_screen_page_controller.dart';

class AnimatedCallScreenPageView
    extends GetView<AnimatedCallScreenPageController> {
  const AnimatedCallScreenPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        extendBody: true,
        bottomNavigationBar: const AnimatedCallScreenPageView(),
        body: Center(
          child: controller.animatedCallScreenWidgetOptions
              .elementAt(controller.selectedTab),
        ),
      ),
    );
  }
}
