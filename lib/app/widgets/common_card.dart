import 'package:flutter/material.dart';
import 'package:ring_tone/app/core/theme/colors.dart';

class CommonCardUI extends StatelessWidget {
  final String? title;
  final String? subTitle;

  const CommonCardUI({Key? key, this.title, this.subTitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: AppColors.green),
        ),
        Expanded(
          flex: 8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  subTitle!,
                  style: TextStyle(color: AppColors.grey, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Icon(
            Icons.arrow_circle_right_outlined,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
