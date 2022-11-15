import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ring_tones_controller.dart';
import 'bottom_navigtion.dart';

class RingTonesView extends GetView<RingTonesController> {
  const RingTonesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        extendBody: true,
        // backgroundColor: AppColors.black2,
        bottomNavigationBar: RingTonesBottomNavigtion(),
        body: Center(
          child: controller.widgetOptions.elementAt(controller.selectedTab),
        ),
      ),
    );
  }
}
