import 'package:get/get.dart';

import '../controllers/wallpapers_home_page_controller.dart';

class WallpapersHomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WallpapersHomePageController>(
      () => WallpapersHomePageController(),
    );
  }
}
