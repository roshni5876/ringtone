import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/individual_classical_music_page_controller.dart';

class IndividualClassicalMusicPageView
    extends GetView<IndividualClassicalMusicPageController> {
  const IndividualClassicalMusicPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IndividualClassicalMusicPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'IndividualClassicalMusicPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
