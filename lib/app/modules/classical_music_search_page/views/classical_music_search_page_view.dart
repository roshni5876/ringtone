import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/classical_music_search_page_controller.dart';

class ClassicalMusicSearchPageView
    extends GetView<ClassicalMusicSearchPageController> {
  const ClassicalMusicSearchPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClassicalMusicSearchPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ClassicalMusicSearchPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
