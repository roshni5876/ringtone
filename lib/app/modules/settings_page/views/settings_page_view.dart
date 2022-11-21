import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/core/theme/colors.dart';
import 'package:ring_tone/app/modules/languages_page/controllers/languages_page_controller.dart';
import 'package:ring_tone/app/routes/app_pages.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Notifications',
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Obx(
                () => CupertinoSwitch(
                  value: controller.notification,
                  onChanged: (value) {
                    controller.notification = value;
                  },
                  thumbColor: AppColors.purple500,
                  activeColor: AppColors.primaryColor,
                ),
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
                    child: SimpleDialog(
                      backgroundColor: AppColors.grey900,
                      title: Text(
                        'Theme',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(() => Row(
                                  children: [
                                    Radio(
                                      value: "Light",
                                      groupValue: controller.theme,
                                      activeColor: AppColors.primaryColor,
                                      onChanged: (value) {
                                        controller.theme = value.toString();
                                      },
                                    ),
                                    Text(
                                      'Light',
                                      style: TextStyle(
                                          color: AppColors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                )),
                            Obx(() => Row(
                                  children: [
                                    Radio(
                                      value: "Dark",
                                      activeColor: AppColors.primaryColor,
                                      groupValue: controller.theme,
                                      onChanged: (value) {
                                        controller.theme = value.toString();
                                      },
                                    ),
                                    Text(
                                      'Dark',
                                      style: TextStyle(
                                          color: AppColors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                )),
                            Obx(() => Row(
                                  children: [
                                    Radio(
                                      value: "System default",
                                      activeColor: AppColors.primaryColor,
                                      groupValue: controller.theme,
                                      onChanged: (value) {
                                        controller.theme = value.toString();
                                      },
                                    ),
                                    Text(
                                      'System default',
                                      style: TextStyle(
                                          color: AppColors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                )),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
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
                                  )),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
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
                Obx(() => Text(
                      controller.theme,
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.LANGUAGES_PAGE);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Languages',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Obx(() => Text(
                      selecteValue,
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: AppColors.grey900,
                      title: Text(
                        'Clear cache',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      content: Text(
                        'cache is being used for faster loading of the content. If you clear it ypur app may work slower.',
                        style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text('CANCEL'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('CLEAR'),
                        ),
                      ],
                    );
                  });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Clear cache',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '2.05 MB',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 1,
            color: AppColors.grey,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Animated Call Screen',
            style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FittedBox(
                child: Text(
                  'If no contact photo use default \n image',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Obx(
                () => CupertinoSwitch(
                  value: controller.callScreen,
                  onChanged: (value) {
                    controller.callScreen = value;
                  },
                  thumbColor: AppColors.purple500,
                  activeColor: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 1,
            color: AppColors.grey,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Other',
            style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Version',
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '13.0.1',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Rate this app',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              FlutterShare.share(
                title: 'share type',
                text: 'Example',
                linkUrl: 'https://pub.dev/packages/url_launcher',
              );
            },
            child: Text(
              'Share',
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'More Apps',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Privacy Policy',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Terms of use',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
