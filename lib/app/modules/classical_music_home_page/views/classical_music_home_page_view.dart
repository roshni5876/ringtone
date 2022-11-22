import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ring_tone/app/core/theme/colors.dart';
import 'package:ring_tone/app/routes/app_pages.dart';
import 'package:ring_tone/app/widgets/common_card.dart';
import '../../../core/constants/string.dart';
import '../controllers/classical_music_home_page_controller.dart';

class ClassicalMusicHomePageView
    extends GetView<ClassicalMusicHomePageController> {
  const ClassicalMusicHomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black2,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.transparent,
        title: Text(
          'Classical Music',
          style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () => Get.toNamed(Routes.HOME),
          icon: Icon(
            Icons.menu,
            color: AppColors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.SETTINGS_PAGE);
            },
            icon: Icon(
              Icons.settings,
              color: AppColors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          CommonCardUI(
            title: "Popular",
            subTitle: "29 composition",
            onTap: () {
              Get.toNamed(Routes.INDIVIDUAL_CLASSICAL_MUSIC_PAGE,
                  id: ClassicalMusicNavigatorKey.classicalMusicHome);
            },
          ),
        ],
      ),
    );
  }
}
