import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:ring_tone/app/core/theme/colors.dart';
import 'package:ring_tone/app/modules/ring_tones/controllers/ring_tones_controller.dart';

// class RingTonesPageView extends GetView<RingTonesController> {
//   const RingTonesPageView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
// return Scaffold(
//   bottomNavigationBar: const RingTonesBottomNavigtion(),
//   body: IndexedStack(
//     index: controller.selectedTab,
//     children: [
//       Navigator(
//         key: Get.nestedKey(RingTonesNavigatorKey.ringTonesHome),
//         onGenerateRoute: (settings) {
//           switch (settings.name) {
//             case Routes.RING_TONES:
//               return GetPageRoute(
//                   routeName: Routes.RING_TONES,
//                   page: () => const RingTonesPageView(),
//                   binding: RingTonesBinding());

//             //   case Routes.DASHBOARD_PET_PROFILES_PAGE:
//             //     return GetPageRoute(
//             //         routeName: Routes.DASHBOARD_PET_PROFILES_PAGE,
//             //         page: () => const DashboardPetProfilesPageView(),
//             //         binding: DashboardPetProfilesPageBinding());

//             //   default:
//             //     return MaterialPageRoute(builder: (context) {
//             //       return const DashboardBarelProfilePageView();
//             //     });
//           }
//           return null;
//         },
//       ),
//       Navigator(
//         key: Get.nestedKey(RingTonesNavigatorKey.ringTonesSearch),
//         onGenerateRoute: (settings) {
//           switch (settings.name) {
//             case Routes.RING_TONES_SEARCH_PAGE:
//               return GetPageRoute(
//                   routeName: Routes.RING_TONES_SEARCH_PAGE,
//                   page: () => const RingTonesSearchPageView(),
//                   binding: RingTonesSearchPageBinding());
//           }
//           return null;
//         },
//       ),
//     ],
//   ),
//     );
//   }
// }

class RingTonesBottomNavigtion extends StatelessWidget {
  RingTonesBottomNavigtion({Key? key}) : super(key: key);
  final controller = Get.put(RingTonesController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset.zero, blurRadius: 10, color: AppColors.black2),
        ],
      ),
      child: BottomNavigationBar(
          backgroundColor: AppColors.black2,
          onTap: controller.selectPage,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.pink,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.queue_music),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.workspace_premium),
              label: 'Premium',
            ),
          ]),
    );
  }
}
