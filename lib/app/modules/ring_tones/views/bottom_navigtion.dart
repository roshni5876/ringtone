import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/colors.dart';
import '../controllers/ring_tones_controller.dart';

class RingTonesBottomNavigtion extends StatelessWidget {
  RingTonesBottomNavigtion({Key? key}) : super(key: key);
  final controller = Get.put(RingTonesController());

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
          backgroundColor: AppColors.black2,
          onTap: controller.selectPage,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.pink,
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
