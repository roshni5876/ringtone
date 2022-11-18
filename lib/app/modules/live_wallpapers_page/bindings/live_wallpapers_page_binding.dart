import 'package:get/get.dart';

import '../controllers/live_wallpapers_page_controller.dart';

class LiveWallpapersPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LiveWallpapersPageController>(
      () => LiveWallpapersPageController(),
    );
  }
}
