import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/core/theme/colors.dart';
import 'package:ring_tone/app/routes/app_pages.dart';

import '../../../widgets/common_card.dart';
import '../controllers/wallpapers_home_page_controller.dart';

class WallpapersHomePageView extends GetView<WallpapersHomePageController> {
  const WallpapersHomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black2,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.transparent,
        title: Text(
          'Wallpapers',
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
            onPressed: () {},
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
            title: "Christmas",
            subTitle: "66 wallpapers",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
