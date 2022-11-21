import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/core/constants/string.dart';
import 'package:ring_tone/app/modules/indivindividual_ringtones_details_page/bindings/indivindividual_ringtones_details_page_binding.dart';
import 'package:ring_tone/app/modules/indivindividual_ringtones_details_page/views/indivindividual_ringtones_details_page_view.dart';
import 'package:ring_tone/app/modules/indivindividual_ringtones_page/bindings/indivindividual_ringtones_page_binding.dart';
import 'package:ring_tone/app/modules/indivindividual_ringtones_page/views/indivindividual_ringtones_page_view.dart';
import 'package:ring_tone/app/modules/ring_tones_home__page/bindings/ring_tones_home_page_binding.dart';
import 'package:ring_tone/app/modules/ring_tones_home__page/views/ring_tones_home_page_view.dart';
import 'package:ring_tone/app/modules/ring_tones_search_page/bindings/ring_tones_search_page_binding.dart';
import 'package:ring_tone/app/modules/ring_tones_search_page/views/ring_tones_search_page_view.dart';
import 'package:ring_tone/app/routes/app_pages.dart';

import '../controllers/ring_tones_controller.dart';
import 'bottom_navigtion.dart';

class RingTonesView extends GetView<RingTonesController> {
  const RingTonesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        extendBody: true,
       
        bottomNavigationBar: RingTonesBottomNavigtion(),
       
        body: WillPopScope(
          onWillPop: controller.onWillPop,
          child: IndexedStack(
            index: controller.selectedTab,
            children: [
              Navigator(
                  key: Get.nestedKey(RingTonesNavigatorKey.ringTonesHome),
                  onGenerateRoute: (settings) {
                    switch (settings.name) {
                      case Routes.RING_TONES_HOME_PAGE:
                        return GetPageRoute(
                          routeName: Routes.RING_TONES_HOME_PAGE,
                          page: () => const RingTonesHomePageView(),
                          binding: RingTonesHomePageBinding(),
                        );

                      case Routes.INDIVINDIVIDUAL_RINGTONES_PAGE:
                        return GetPageRoute(
                          routeName: Routes.INDIVINDIVIDUAL_RINGTONES_PAGE,
                          page: () => const IndivindividualRingtonesPageView(),
                          binding: IndivindividualRingtonesPageBinding(),
                        );
                      case Routes.INDIVINDIVIDUAL_RINGTONES_DETAILS_PAGE:
                        return GetPageRoute(
                          routeName:
                              Routes.INDIVINDIVIDUAL_RINGTONES_DETAILS_PAGE,
                          page: () =>
                              const IndivindividualRingtonesDetailsPageView(),
                          binding: IndivindividualRingtonesDetailsPageBinding(),
                        );
                      default:
                        return MaterialPageRoute(builder: (context) {
                          return const RingTonesHomePageView();
                        });
                    }
                  }),
              Navigator(
                  key: Get.nestedKey(RingTonesNavigatorKey.ringTonesSearch),
                  onGenerateRoute: (settings) {
                    switch (settings.name) {
                      case Routes.RING_TONES_SEARCH_PAGE:
                        return GetPageRoute(
                          routeName: Routes.RING_TONES_SEARCH_PAGE,
                          page: () => const RingTonesSearchPageView(),
                          binding: RingTonesSearchPageBinding(),
                        );

                      case Routes.INDIVINDIVIDUAL_RINGTONES_PAGE:
                        return GetPageRoute(
                          routeName: Routes.INDIVINDIVIDUAL_RINGTONES_PAGE,
                          page: () => const IndivindividualRingtonesPageView(),
                          binding: IndivindividualRingtonesPageBinding(),
                        );
                      case Routes.INDIVINDIVIDUAL_RINGTONES_DETAILS_PAGE:
                        return GetPageRoute(
                          routeName:
                              Routes.INDIVINDIVIDUAL_RINGTONES_DETAILS_PAGE,
                          page: () =>
                              const IndivindividualRingtonesDetailsPageView(),
                          binding: IndivindividualRingtonesDetailsPageBinding(),
                        );
                      default:
                        return MaterialPageRoute(builder: (context) {
                          return const RingTonesSearchPageView();
                        });
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
