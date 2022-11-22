import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/classical_music_favorites_page_controller.dart';

class ClassicalMusicFavoritesPageView
    extends GetView<ClassicalMusicFavoritesPageController> {
  const ClassicalMusicFavoritesPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClassicalMusicFavoritesPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ClassicalMusicFavoritesPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
