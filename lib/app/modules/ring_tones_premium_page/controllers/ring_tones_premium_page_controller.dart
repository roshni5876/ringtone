import 'package:get/get.dart';

enum PremiumOptions { monthly, yearly }

class RingTonesPremiumPageController extends GetxController {
  final _isonchanged = false.obs;
  bool get isonchanged => _isonchanged.value;
  set isonchanged(bool value) => _isonchanged.value = value;

  final _premiumOptions = PremiumOptions.monthly.obs;
  PremiumOptions get premiumOptions => _premiumOptions.value;
  set premiumOptions(PremiumOptions value) => _premiumOptions.value = value;
}
