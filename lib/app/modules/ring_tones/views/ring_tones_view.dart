import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/core/constants/string.dart';
import 'package:ring_tone/app/modules/ring_tones/bindings/ring_tones_binding.dart';
import 'package:ring_tone/app/modules/ring_tones/views/bottom_navigtion.dart';
import 'package:ring_tone/app/modules/ring_tones_favorites_page/bindings/ring_tones_favorites_page_binding.dart';
import 'package:ring_tone/app/modules/ring_tones_favorites_page/views/ring_tones_favorites_page_view.dart';
import 'package:ring_tone/app/modules/ring_tones_premium_page/bindings/ring_tones_premium_page_binding.dart';
import 'package:ring_tone/app/modules/ring_tones_premium_page/views/ring_tones_premium_page_view.dart';
import 'package:ring_tone/app/modules/ring_tones_search_page/bindings/ring_tones_search_page_binding.dart';
import 'package:ring_tone/app/modules/ring_tones_search_page/views/ring_tones_search_page_view.dart';
import 'package:ring_tone/app/routes/app_pages.dart';

import '../controllers/ring_tones_controller.dart';

class RingTonesView extends GetView<RingTonesController> {
  const RingTonesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // backgroundColor: AppColors.black2,
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
                  case Routes.RING_TONES:
                    return GetPageRoute(
                        routeName: Routes.RING_TONES,
                        // page: () => const RingTonesPageView(),
                        binding: RingTonesBinding());

                  //   case Routes.DASHBOARD_PET_PROFILES_PAGE:
                  //     return GetPageRoute(
                  //         routeName: Routes.DASHBOARD_PET_PROFILES_PAGE,
                  //         page: () => const DashboardPetProfilesPageView(),
                  //         binding: DashboardPetProfilesPageBinding());

                  //   default:
                  //     return MaterialPageRoute(builder: (context) {
                  //       return const DashboardBarelProfilePageView();
                  //     });
                }
                return null;
              },
            ),
            Navigator(
              key: Get.nestedKey(RingTonesNavigatorKey.ringTonesSearch),
              onGenerateRoute: (settings) {
                switch (settings.name) {
                  case Routes.RING_TONES_SEARCH_PAGE:
                    return GetPageRoute(
                        routeName: Routes.RING_TONES_SEARCH_PAGE,
                        page: () => const RingTonesSearchPageView(),
                        binding: RingTonesSearchPageBinding());
                }
                return null;
              },
            ),
            Navigator(
              key: Get.nestedKey(RingTonesNavigatorKey.ringTonesFavorites),
              onGenerateRoute: (settings) {
                switch (settings.name) {
                  case Routes.RING_TONES_FAVORITES_PAGE:
                    return GetPageRoute(
                        routeName: Routes.RING_TONES_FAVORITES_PAGE,
                        page: () => const RingTonesFavoritesPageView(),
                        binding: RingTonesFavoritesPageBinding());
                }
                return null;
              },
            ),
            Navigator(
              key: Get.nestedKey(RingTonesNavigatorKey.ringTonesPremium),
              onGenerateRoute: (settings) {
                switch (settings.name) {
                  case Routes.RING_TONES_FAVORITES_PAGE:
                    return GetPageRoute(
                        routeName: Routes.RING_TONES_FAVORITES_PAGE,
                        page: () => const RingTonesPremiumPageView(),
                        binding: RingTonesPremiumPageBinding());
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
