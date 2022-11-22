import 'package:get/get.dart';
import 'package:ring_tone/app/modules/classical_music_favorites_page/controllers/classical_music_favorites_page_controller.dart';
import 'package:ring_tone/app/modules/classical_music_home_page/controllers/classical_music_home_page_controller.dart';
import 'package:ring_tone/app/modules/classical_music_search_page/controllers/classical_music_search_page_controller.dart';

import '../../classical_music_premium_page/controllers/classical_music_premium_page_controller.dart';
import '../controllers/classical_music_page_controller.dart';

class ClassicalMusicPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClassicalMusicPageController>(
      () => ClassicalMusicPageController(argTabNo: Get.arguments),
    );

    Get.put(ClassicalMusicHomePageController());
    Get.put(ClassicalMusicSearchPageController());
    Get.put(ClassicalMusicFavoritesPageController());
    Get.put(ClassicalMusicPremiumPageController());
  }
}
