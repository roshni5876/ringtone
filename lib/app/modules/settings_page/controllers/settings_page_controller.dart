import 'package:get/get.dart';

class SettingsPageController extends GetxController {
  final _theme = ''.obs;
  String get theme => _theme.value;
  set theme(String value) => _theme.value = value;
}
