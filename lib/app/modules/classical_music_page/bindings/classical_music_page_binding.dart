import 'package:get/get.dart';

import '../controllers/classical_music_page_controller.dart';

class ClassicalMusicPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClassicalMusicPageController>(
      () => ClassicalMusicPageController(),
    );
  }
}
