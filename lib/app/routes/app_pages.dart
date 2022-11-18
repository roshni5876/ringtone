import 'package:get/get.dart';

import '../modules/animated_call_screen_favorites_page/bindings/animated_call_screen_favorites_page_binding.dart';
import '../modules/animated_call_screen_favorites_page/views/animated_call_screen_favorites_page_view.dart';
import '../modules/animated_call_screen_home_page/bindings/animated_call_screen_home_page_binding.dart';
import '../modules/animated_call_screen_home_page/views/animated_call_screen_home_page_view.dart';
import '../modules/animated_call_screen_page/bindings/animated_call_screen_page_binding.dart';
import '../modules/animated_call_screen_page/views/animated_call_screen_page_view.dart';
import '../modules/animated_call_screen_premium_page/bindings/animated_call_screen_premium_page_binding.dart';
import '../modules/animated_call_screen_premium_page/views/animated_call_screen_premium_page_view.dart';
import '../modules/animated_call_screen_search_page/bindings/animated_call_screen_search_page_binding.dart';
import '../modules/animated_call_screen_search_page/views/animated_call_screen_search_page_view.dart';
import '../modules/classical_music_page/bindings/classical_music_page_binding.dart';
import '../modules/classical_music_page/views/classical_music_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/live_wallpapers_page/bindings/live_wallpapers_page_binding.dart';
import '../modules/live_wallpapers_page/views/live_wallpapers_page_view.dart';
import '../modules/ring_tones/bindings/ring_tones_binding.dart';
import '../modules/ring_tones/views/ring_tones_view.dart';
import '../modules/ring_tones_favorites_page/bindings/ring_tones_favorites_page_binding.dart';
import '../modules/ring_tones_favorites_page/views/ring_tones_favorites_page_view.dart';
import '../modules/ring_tones_home__page/bindings/ring_tones_home_page_binding.dart';
import '../modules/ring_tones_home__page/views/ring_tones_home_page_view.dart';
import '../modules/ring_tones_premium_page/bindings/ring_tones_premium_page_binding.dart';
import '../modules/ring_tones_premium_page/views/ring_tones_premium_page_view.dart';
import '../modules/ring_tones_search_page/bindings/ring_tones_search_page_binding.dart';
import '../modules/ring_tones_search_page/views/ring_tones_search_page_view.dart';
import '../modules/settings_page/bindings/settings_page_binding.dart';
import '../modules/settings_page/views/settings_page_view.dart';
import '../modules/stickers_home_page/bindings/stickers_home_page_binding.dart';
import '../modules/stickers_home_page/views/stickers_home_page_view.dart';
import '../modules/unit_converter_home_page/bindings/unit_converter_home_page_binding.dart';
import '../modules/unit_converter_home_page/views/unit_converter_home_page_view.dart';
import '../modules/wallpapers_home_page/bindings/wallpapers_home_page_binding.dart';
import '../modules/wallpapers_home_page/views/wallpapers_home_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.RING_TONES;

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
    GetPage(
      name: _Paths.RING_TONES_HOME_PAGE,
      page: () => const RingTonesHomePageView(),
      binding: RingTonesHomePageBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_CALL_SCREEN_PAGE,
      page: () => const AnimatedCallScreenPageView(),
      binding: AnimatedCallScreenPageBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_CALL_SCREEN_HOME_PAGE,
      page: () => const AnimatedCallScreenHomePageView(),
      binding: AnimatedCallScreenHomePageBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_CALL_SCREEN_SEARCH_PAGE,
      page: () => const AnimatedCallScreenSearchPageView(),
      binding: AnimatedCallScreenSearchPageBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_CALL_SCREEN_FAVORITES_PAGE,
      page: () => const AnimatedCallScreenFavoritesPageView(),
      binding: AnimatedCallScreenFavoritesPageBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_CALL_SCREEN_PREMIUM_PAGE,
      page: () => const AnimatedCallScreenPremiumPageView(),
      binding: AnimatedCallScreenPremiumPageBinding(),
    ),
    GetPage(
      name: _Paths.CLASSICAL_MUSIC_PAGE,
      page: () => const ClassicalMusicPageView(),
      binding: ClassicalMusicPageBinding(),
    ),
    GetPage(
      name: _Paths.LIVE_WALLPAPERS_PAGE,
      page: () => const LiveWallpapersPageView(),
      binding: LiveWallpapersPageBinding(),
    ),
    GetPage(
      name: _Paths.UNIT_CONVERTER_HOME_PAGE,
      page: () => const UnitConverterHomePageView(),
      binding: UnitConverterHomePageBinding(),
    ),
    GetPage(
      name: _Paths.WALLPAPERS_HOME_PAGE,
      page: () => const WallpapersHomePageView(),
      binding: WallpapersHomePageBinding(),
    ),
    GetPage(
      name: _Paths.STICKERS_HOME_PAGE,
      page: () => const StickersHomePageView(),
      binding: StickersHomePageBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS_PAGE,
      page: () => const SettingsPageView(),
      binding: SettingsPageBinding(),
    ),
  ];
}
