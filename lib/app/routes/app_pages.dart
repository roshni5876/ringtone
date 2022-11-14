import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/ring_tones/bindings/ring_tones_binding.dart';
import '../modules/ring_tones/views/ring_tones_view.dart';
import '../modules/ring_tones_favorites_page/bindings/ring_tones_favorites_page_binding.dart';
import '../modules/ring_tones_favorites_page/views/ring_tones_favorites_page_view.dart';
import '../modules/ring_tones_premium_page/bindings/ring_tones_premium_page_binding.dart';
import '../modules/ring_tones_premium_page/views/ring_tones_premium_page_view.dart';
import '../modules/ring_tones_search_page/bindings/ring_tones_search_page_binding.dart';
import '../modules/ring_tones_search_page/views/ring_tones_search_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.RING_TONES,
      page: () => const RingTonesView(),
      binding: RingTonesBinding(),
    ),
    GetPage(
      name: _Paths.RING_TONES_SEARCH_PAGE,
      page: () => const RingTonesSearchPageView(),
      binding: RingTonesSearchPageBinding(),
    ),
    GetPage(
      name: _Paths.RING_TONES_FAVORITES_PAGE,
      page: () => const RingTonesFavoritesPageView(),
      binding: RingTonesFavoritesPageBinding(),
    ),
    GetPage(
      name: _Paths.RING_TONES_PREMIUM_PAGE,
      page: () => const RingTonesPremiumPageView(),
      binding: RingTonesPremiumPageBinding(),
    ),
  ];
}
