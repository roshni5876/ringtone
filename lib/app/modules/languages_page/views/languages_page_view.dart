import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/core/theme/colors.dart';

import '../controllers/languages_page_controller.dart';

class LanguagesPageView extends GetView<LanguagesPageController> {
  const LanguagesPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black2,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        title: const Text('Languages'),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.grey,
          ),
        ),
      ),
      body: ListView(
        children: [
          Obx(
            () => ListTile(
              onTap: () => selecteValue = 0.toString(),
              leading: Text(
                'English',
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              trailing: Radio(
                value: "English",
                activeColor: AppColors.primaryColor,
                groupValue: selecteValue,
                onChanged: (value) {
                  selecteValue = value.toString();
                },
              ),
            ),
          ),
          Obx(
            () => ListTile(
              onTap: () => selecteValue = 1.toString(),
              leading: Text(
                'Dansk',
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              trailing: Radio(
                value: "Dansk",
                activeColor: AppColors.primaryColor,
                groupValue: selecteValue,
                onChanged: (value) {
                  selecteValue = value.toString();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
