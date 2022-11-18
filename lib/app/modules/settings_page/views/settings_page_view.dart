import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/core/theme/colors.dart';

import '../controllers/settings_page_controller.dart';

class SettingsPageView extends GetView<SettingsPageController> {
  const SettingsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black2,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        title: const Text('Settings'),
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
          Text(
            'General',
            style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'Notifications',
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return SizedBox(
                    height: 100,
                    child: AlertDialog(
                      backgroundColor: AppColors.grey900,
                      title: Text(
                        'Theme',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: "radio value",
                                groupValue: controller.theme,
                                onChanged: (value) {},
                              ),
                              Text(
                                'Light',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: "radio value",
                                groupValue: controller.theme,
                                onChanged: (value) {},
                              ),
                              Text(
                                'Dark',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: "radio value",
                                groupValue: controller.theme,
                                onChanged: (value) {},
                              ),
                              Text(
                                'System default',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            'CANCEL',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Theme',
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Dark',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
