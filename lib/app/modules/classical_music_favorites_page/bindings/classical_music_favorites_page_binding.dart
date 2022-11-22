import 'package:get/get.dart';

import '../controllers/classical_music_favorites_page_controller.dart';

class ClassicalMusicFavoritesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClassicalMusicFavoritesPageController>(
      () => ClassicalMusicFavoritesPageController(),
    );
  }
}
