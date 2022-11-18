import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ring_tone/app/modules/animated_call_screen_page/controllers/animated_call_screen_page_controller.dart';

import '../core/theme/colors.dart';
import '../modules/ring_tones/controllers/ring_tones_controller.dart';

class RingTonesBottomNavigtion extends StatelessWidget {
  RingTonesBottomNavigtion({Key? key}) : super(key: key);
  final controller = Get.put(RingTonesController());
  final animatedCallScareenController =
      Get.put(AnimatedCallScreenPageController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset.zero, blurRadius: 10, color: AppColors.white),
        ],
      ),
      child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: AppColors.black2,
          onTap: controller.selectPage,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.grey,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          unselectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          currentIndex: controller.selectedTab,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.queue_music),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.workspace_premium),
              label: 'Premium',
            ),
          ]),
    );
  }
}
