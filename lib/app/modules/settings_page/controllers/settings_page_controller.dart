import 'package:get/get.dart';

class SettingsPageController extends GetxController {
  final _theme = 'Dark'.obs;
  String get theme => _theme.value;
  set theme(String value) => _theme.value = value;

  final _notification = false.obs;
  bool get notification => _notification.value;
  set notification(bool value) => _notification.value = value;

  final _callScreen = false.obs;
  bool get callScreen => _callScreen.value;
  set callScreen(bool value) => _callScreen.value = value;
}
