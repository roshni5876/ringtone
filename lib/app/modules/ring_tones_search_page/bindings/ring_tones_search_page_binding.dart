import 'package:get/get.dart';

import '../controllers/ring_tones_search_page_controller.dart';

class RingTonesSearchPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RingTonesSearchPageController>(
      () => RingTonesSearchPageController(),
    );
  }
}
