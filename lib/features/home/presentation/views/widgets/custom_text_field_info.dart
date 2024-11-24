import 'package:flutter/material.dart';
import 'package:task_ui/core/utils/app_assets.dart';
import 'package:task_ui/core/utils/app_colors.dart';

class CustomTextFieldInfo extends StatelessWidget {
  const CustomTextFieldInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      decoration:  BoxDecoration(
        color: AppColors.primaryColor.withOpacity(.6)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 15,
          ),
          Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: Center(
                child: Image.asset(AppAssets.profile)
              ),
                  ),
          
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
                    "Ahmed Ali Mostafa",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Text(
                "13/12/2024 - 12:03 pm",
                style:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}