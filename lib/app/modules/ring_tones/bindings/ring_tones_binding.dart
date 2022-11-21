import 'package:get/get.dart';
import 'package:ring_tone/app/modules/ring_tones_favorites_page/controllers/ring_tones_favorites_page_controller.dart';
import 'package:ring_tone/app/modules/ring_tones_home__page/controllers/ring_tones_home_page_controller.dart';
import 'package:ring_tone/app/modules/ring_tones_premium_page/controllers/ring_tones_premium_page_controller.dart';
import 'package:ring_tone/app/modules/ring_tones_search_page/controllers/ring_tones_search_page_controller.dart';

import '../controllers/ring_tones_controller.dart';

class RingTonesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RingTonesController>(
      () => RingTonesController(argTabNo: Get.arguments),
    );
    Get.put(RingTonesHomePageController());
    Get.put(RingTonesSearchPageController());
    Get.put(RingTonesFavoritesPageController());
    Get.put(RingTonesPremiumPageController());
  }
}
