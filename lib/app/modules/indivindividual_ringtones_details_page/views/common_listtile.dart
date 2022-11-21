import 'package:flutter/material.dart';
import 'package:ring_tone/app/core/theme/colors.dart';

class ListTileRingTones extends StatelessWidget {
  ListTileRingTones({Key? key, this.ic, this.onTap, this.title})
      : super(key: key);
  IconData? ic;
  String? title;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        ic,
        color: AppColors.grey,
        size: 30,
      ),
      title: Text(
        title.toString(),
        style: TextStyle(
            fontSize: 22, color: AppColors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
