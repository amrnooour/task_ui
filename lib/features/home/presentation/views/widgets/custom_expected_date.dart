import 'package:flutter/material.dart';
import 'package:task_ui/core/utils/app_assets.dart';
import 'package:task_ui/core/utils/app_colors.dart';

class CustomExpectedDate extends StatelessWidget {
  const CustomExpectedDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
                color: Colors.red.withOpacity(.2), // 0xAARRGGBB (AA: Opacity in hex)
                blurRadius: 30,
                spreadRadius: 0,
                offset: const Offset(0, 0), // Shadow position
              ),
        ],
        border: Border.all(color: Colors.red),
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 7,
              ),
              Image.asset(AppAssets.expectedDate),
              const SizedBox(
                width: 10,
              ),
              const Column(
                mainAxisAlignment:  MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Expected Visit Date",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        " *",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.green,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Text(
                    "Click to pick a date",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
      ),
    );
  }
}
