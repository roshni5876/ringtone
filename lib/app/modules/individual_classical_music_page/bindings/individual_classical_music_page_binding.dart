import 'package:get/get.dart';

import '../controllers/individual_classical_music_page_controller.dart';

class IndividualClassicalMusicPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IndividualClassicalMusicPageController>(
      () => IndividualClassicalMusicPageController(),
    );
  }
}
