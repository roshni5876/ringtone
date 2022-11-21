import 'package:get/get.dart';

import '../controllers/indivindividual_ringtones_details_page_controller.dart';

class IndivindividualRingtonesDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IndivindividualRingtonesDetailsPageController>(
      () => IndivindividualRingtonesDetailsPageController(),
    );
  }
}
