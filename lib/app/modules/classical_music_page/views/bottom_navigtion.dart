import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ring_tone/app/core/theme/colors.dart';
import 'package:ring_tone/app/modules/classical_music_page/controllers/classical_music_page_controller.dart';

class ClassicalMusicBottomNavigtion extends StatelessWidget {
  ClassicalMusicBottomNavigtion({Key? key}) : super(key: key);
  final controller = Get.put(ClassicalMusicPageController());
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
         key: controller.classicalMusicScaffoldKey,
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
            label: 'Homeee',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Searchhh',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspace_premium),
            label: 'Premium',
          ),
        ],
      ),
    );
  }
}
