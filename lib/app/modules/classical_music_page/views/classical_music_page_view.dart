import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/modules/classical_music_favorites_page/bindings/classical_music_favorites_page_binding.dart';
import 'package:ring_tone/app/modules/classical_music_favorites_page/views/classical_music_favorites_page_view.dart';
import 'package:ring_tone/app/modules/classical_music_home_page/bindings/classical_music_home_page_binding.dart';
import 'package:ring_tone/app/modules/classical_music_home_page/views/classical_music_home_page_view.dart';
import 'package:ring_tone/app/modules/classical_music_page/views/bottom_navigtion.dart';
import 'package:ring_tone/app/modules/classical_music_premium_page/bindings/classical_music_premium_page_binding.dart';
import 'package:ring_tone/app/modules/classical_music_premium_page/views/classical_music_premium_page_view.dart';
import 'package:ring_tone/app/modules/classical_music_search_page/bindings/classical_music_search_page_binding.dart';
import 'package:ring_tone/app/modules/classical_music_search_page/views/classical_music_search_page_view.dart';
import 'package:ring_tone/app/routes/app_pages.dart';

import '../../../core/constants/string.dart';
import '../controllers/classical_music_page_controller.dart';

class ClassicalMusicPageView extends GetView<ClassicalMusicPageController> {
  const ClassicalMusicPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
       
        extendBody: true,
        bottomNavigationBar: ClassicalMusicBottomNavigtion(),
        body: WillPopScope(
          onWillPop: controller.onWillPop,
          child: IndexedStack(
            index: controller.selectedTab,
            children: [
              Navigator(
                  key: Get.nestedKey(
                      ClassicalMusicNavigatorKey.classicalMusicHome),
                  onGenerateRoute: (settings) {
                    switch (settings.name) {
                      case Routes.CLASSICAL_MUSIC_HOME_PAGE:
                        return GetPageRoute(
                          routeName: Routes.CLASSICAL_MUSIC_HOME_PAGE,
                          page: () => const ClassicalMusicHomePageView(),
                          binding: ClassicalMusicHomePageBinding(),
                        );

                      // case Routes.INDIVINDIVIDUAL_RINGTONES_PAGE:
                      //   return GetPageRoute(
                      //     routeName: Routes.INDIVINDIVIDUAL_RINGTONES_PAGE,
                      //     page: () => const IndivindividualRingtonesPageView(),
                      //     binding: IndivindividualRingtonesPageBinding(),
                      //   );
                      // case Routes.INDIVINDIVIDUAL_RINGTONES_DETAILS_PAGE:
                      //   return GetPageRoute(
                      //     routeName:
                      //         Routes.INDIVINDIVIDUAL_RINGTONES_DETAILS_PAGE,
                      //     page: () =>
                      //         const IndivindividualRingtonesDetailsPageView(),
                      //     binding: IndivindividualRingtonesDetailsPageBinding(),
                      //   );
                      default:
                        return MaterialPageRoute(builder: (context) {
                          return const ClassicalMusicHomePageView();
                        });
                    }
                  }),
              Navigator(
                  key: Get.nestedKey(
                      ClassicalMusicNavigatorKey.classicalMusicSearch),
                  onGenerateRoute: (settings) {
                    switch (settings.name) {
                      case Routes.CLASSICAL_MUSIC_SEARCH_PAGE:
                        return GetPageRoute(
                          routeName: Routes.CLASSICAL_MUSIC_SEARCH_PAGE,
                          page: () => const ClassicalMusicSearchPageView(),
                          binding: ClassicalMusicSearchPageBinding(),
                        );

                      // case Routes.INDIVINDIVIDUAL_RINGTONES_PAGE:
                      //   return GetPageRoute(
                      //     routeName: Routes.INDIVINDIVIDUAL_RINGTONES_PAGE,
                      //     page: () => const IndivindividualRingtonesPageView(),
                      //     binding: IndivindividualRingtonesPageBinding(),
                      //   );
                      // case Routes.INDIVINDIVIDUAL_RINGTONES_DETAILS_PAGE:
                      //   return GetPageRoute(
                      //     routeName:
                      //         Routes.INDIVINDIVIDUAL_RINGTONES_DETAILS_PAGE,
                      //     page: () =>
                      //         const IndivindividualRingtonesDetailsPageView(),
                      //     binding: IndivindividualRingtonesDetailsPageBinding(),
                      //   );
                      default:
                        return MaterialPageRoute(builder: (context) {
                          return const ClassicalMusicSearchPageView();
                        });
                    }
                  }),
              Navigator(
                  key: Get.nestedKey(
                      ClassicalMusicNavigatorKey.classicalMusicFavorites),
                  onGenerateRoute: (settings) {
                    switch (settings.name) {
                      case Routes.CLASSICAL_MUSIC_FAVORITES_PAGE:
                        return GetPageRoute(
                          routeName: Routes.CLASSICAL_MUSIC_FAVORITES_PAGE,
                          page: () => const ClassicalMusicFavoritesPageView(),
                          binding: ClassicalMusicFavoritesPageBinding(),
                        );

                      // case Routes.INDIVINDIVIDUAL_RINGTONES_DETAILS_PAGE:
                      //   return GetPageRoute(
                      //     routeName:
                      //         Routes.INDIVINDIVIDUAL_RINGTONES_DETAILS_PAGE,
                      //     page: () =>
                      //         const IndivindividualRingtonesDetailsPageView(),
                      //     binding: IndivindividualRingtonesDetailsPageBinding(),
                      //   );
                      default:
                        return MaterialPageRoute(builder: (context) {
                          return const ClassicalMusicFavoritesPageView();
                        });
                    }
                  }),
              Navigator(
                  key: Get.nestedKey(
                      ClassicalMusicNavigatorKey.classicalMusicPremium),
                  onGenerateRoute: (settings) {
                    switch (settings.name) {
                      case Routes.CLASSICAL_MUSIC_PREMIUM_PAGE:
                        return GetPageRoute(
                          routeName: Routes.CLASSICAL_MUSIC_PREMIUM_PAGE,
                          page: () => const ClassicalMusicPremiumPageView(),
                          binding: ClassicalMusicPremiumPageBinding(),
                        );

                      default:
                        return MaterialPageRoute(builder: (context) {
                          return const ClassicalMusicPremiumPageView();
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
