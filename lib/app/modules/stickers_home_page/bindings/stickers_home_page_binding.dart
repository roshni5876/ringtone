import 'package:get/get.dart';

import '../controllers/stickers_home_page_controller.dart';

class StickersHomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StickersHomePageController>(
      () => StickersHomePageController(),
    );
  }
}
