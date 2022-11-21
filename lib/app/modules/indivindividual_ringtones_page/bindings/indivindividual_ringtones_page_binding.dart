import 'package:get/get.dart';

import '../controllers/indivindividual_ringtones_page_controller.dart';

class IndivindividualRingtonesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IndivindividualRingtonesPageController>(
      () => IndivindividualRingtonesPageController(),
    );
  }
}
