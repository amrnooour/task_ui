import 'package:flutter/material.dart';
import 'package:task_ui/core/utils/app_assets.dart';
import 'package:task_ui/core/utils/app_colors.dart';

class FirstContainer extends StatelessWidget {
  final double height;
  final double width;
  const FirstContainer({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(   
        color: AppColors.primaryColor,
          image: DecorationImage(
              image: AssetImage(
                AppAssets.imageOne,
              ),
              fit: BoxFit.cover)),
      child: const Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Icon(Icons.arrow_back),
              SizedBox(
                width: 45,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "New Visitor Pre-access",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                  Text("Villa 45, Palm Crescent Compound, Al Sufouh 2",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
