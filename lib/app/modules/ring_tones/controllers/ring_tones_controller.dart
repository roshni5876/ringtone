import 'package:get/get.dart';

class RingTonesController extends GetxController {
  final _selectedTab = 0.obs;
  int get selectedTab => _selectedTab.value;
  set selectedTab(int value) => _selectedTab.value = value;
  DateTime? currentBackPressTime;
  Future<bool> onWillPop() async {
    if (selectedTab != 0) {
      selectedTab = 0;
      return Future.value(false);
    } else {
      DateTime now = DateTime.now();
      if (currentBackPressTime == null ||
          now.difference(currentBackPressTime!) > const Duration(seconds: 2)) { 
            
        currentBackPressTime = now;
        //  / BotToast.showText(text: 'Press back again to exit');
        return Future.value(false);
      }
      return Future.value(true);
    }
  }

  void selectPage(int index) {
    selectedTab = index;
    // ignore: avoid_print
    print('current tab $selectedTab');
    update();
  }
}
