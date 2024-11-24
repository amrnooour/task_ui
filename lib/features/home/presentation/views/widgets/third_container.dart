import 'package:flutter/material.dart';
import 'package:task_ui/core/utils/app_assets.dart';

class ThirdContainer extends StatelessWidget {
  final double height;
  final double width;
  const ThirdContainer({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.imageTwo),fit: BoxFit.fill)),
    );
  }
}