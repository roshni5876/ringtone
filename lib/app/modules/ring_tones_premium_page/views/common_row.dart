import 'package:flutter/material.dart';
import 'package:ring_tone/app/core/theme/colors.dart';

class CommonRow extends StatelessWidget {
  CommonRow({Key? key, required this.ic, required this.text}) : super(key: key);
  IconData ic;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: AppColors.primaryColor,
            child: Icon(
              ic,
              color: AppColors.black,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
