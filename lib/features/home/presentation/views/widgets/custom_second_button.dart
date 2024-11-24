import 'package:flutter/material.dart';
import 'package:task_ui/core/utils/app_colors.dart';

class CustomSecondButton extends StatelessWidget {
  const CustomSecondButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Color(0xff157c8c)
      ),
      child: const Center(child: Text("Share This QR Code",
      style: TextStyle(color: AppColors.whiteColor,fontSize: 16),),)
    );
  }
}