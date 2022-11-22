import 'package:get/get.dart';

import '../controllers/classical_music_home_page_controller.dart';

class ClassicalMusicHomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClassicalMusicHomePageController>(
      () => ClassicalMusicHomePageController(),
    );
  }
}
