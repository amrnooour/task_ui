import 'package:flutter/material.dart';
import 'package:task_ui/core/utils/app_assets.dart';
import 'package:task_ui/core/utils/app_colors.dart';
import 'package:task_ui/core/utils/app_styles.dart';

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
              fit: BoxFit.fill)),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Image.asset(AppAssets.arrowIcon),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "New Visitor Pre-Access",
                    style: AppStyles.whitesize24weight400,
                  ),
                  Text("Villa 45, Palm Crescent Compound, Al Sufouh 2",
                      style:
                          AppStyles.whitesize24weight400.copyWith(fontSize: 13))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
