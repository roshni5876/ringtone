import 'package:get/get.dart';

import '../controllers/classical_music_premium_page_controller.dart';

class ClassicalMusicPremiumPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClassicalMusicPremiumPageController>(
      () => ClassicalMusicPremiumPageController(),
    );
  }
}
