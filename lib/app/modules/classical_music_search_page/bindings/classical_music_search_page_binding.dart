import 'package:get/get.dart';

import '../controllers/classical_music_search_page_controller.dart';

class ClassicalMusicSearchPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClassicalMusicSearchPageController>(
      () => ClassicalMusicSearchPageController(),
    );
  }
}
