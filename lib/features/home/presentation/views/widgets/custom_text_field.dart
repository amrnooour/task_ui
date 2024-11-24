import 'package:flutter/material.dart';
import 'package:task_ui/core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final double height;
  final String icon;
  final String title1;
  final String title2;
  final String title3;
  final bool isMessage;

  const CustomTextField(
      {super.key,
      this.isMessage=false,
      required this.height,
      required this.icon,
      required this.title1,
      required this.title2,
      required this.title3});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: AppColors.whiteColor),
      child: Padding(
        padding: isMessage? const EdgeInsets.symmetric(vertical: 9):EdgeInsets.zero,
        child: Row(
          crossAxisAlignment: isMessage?CrossAxisAlignment.start:CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 7,
            ),
            Image.asset(icon),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: isMessage?MainAxisAlignment.start: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title1,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      title2,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.green,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Text(
                  title3,
                  style:
                      const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
