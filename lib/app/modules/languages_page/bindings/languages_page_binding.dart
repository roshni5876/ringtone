import 'package:get/get.dart';

import '../controllers/languages_page_controller.dart';

class LanguagesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LanguagesPageController>(
      () => LanguagesPageController(),
    );
  }
}
