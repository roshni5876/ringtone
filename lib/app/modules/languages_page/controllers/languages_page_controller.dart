import 'package:get/get.dart';

final _selecteValue = "English".obs;
String get selecteValue => _selecteValue.value;
set selecteValue(String value) => _selecteValue.value = value;

class LanguagesPageController extends GetxController {}
