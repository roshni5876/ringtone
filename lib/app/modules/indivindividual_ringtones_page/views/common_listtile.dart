import 'package:flutter/material.dart';
import 'package:ring_tone/app/core/theme/colors.dart';

class CommonListTile extends StatelessWidget {
  CommonListTile({Key? key, this.number, this.title, this.subTitle, this.onTap, this.onPressed})
      : super(key: key);
  int? number;
  String? title;
  String? subTitle;
  void Function()? onPressed;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        leading: Text(
          number!.toString(),
          style: TextStyle(
              color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        title: Text(
          title!.toString(),
          style: TextStyle(
              color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          subTitle!.toString(),
          style: TextStyle(
              color: AppColors.grey, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.arrow_circle_right_outlined,
            color: AppColors.grey,
            size: 30,
          ),
          onPressed: onTap,
        ),
      ),
    );
  }
}
