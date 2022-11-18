import 'package:get/get.dart';

import '../controllers/unit_converter_home_page_controller.dart';

class UnitConverterHomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UnitConverterHomePageController>(
      () => UnitConverterHomePageController(),
    );
  }
}
