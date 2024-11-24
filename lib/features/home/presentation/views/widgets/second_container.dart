import 'package:flutter/material.dart';
import 'package:task_ui/core/utils/app_assets.dart';
import 'package:task_ui/core/utils/app_colors.dart';
import 'package:task_ui/features/home/presentation/views/widgets/custom_expected_date.dart';
import 'package:task_ui/features/home/presentation/views/widgets/custom_next_button.dart';
import 'package:task_ui/features/home/presentation/views/widgets/custom_row_title.dart';
import 'package:task_ui/features/home/presentation/views/widgets/custom_text_field.dart';

class SecondContainer extends StatelessWidget {
  final double height;
  final double width;
  const SecondContainer({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(90))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 44),
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                const Color(0xff2CBBd2).withOpacity(.1),
                Colors.transparent,
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff2CBBd2)
                    .withOpacity(.07), // 0xAARRGGBB (AA: Opacity in hex)
                blurRadius: 30,
                spreadRadius: 0,
                offset: const Offset(0, 0), // Shadow position
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 48,
                ),
                const CustomRowTitle(),
                const SizedBox(
                  height: 24,
                ),
                CustomTextField(
                    height: height * .07,
                    icon: AppAssets.profile,
                    title1: "Name",
                    title2: " *",
                    title3: "Ayat Ahmed"),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                    height: height * .07,
                    icon: AppAssets.phone,
                    title1: "phone",
                    title2: " *",
                    title3: "0500000000"),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                    height: height * .07,
                    icon: AppAssets.email,
                    title1: "Email",
                    title2: "",
                    title3: "ayaat.a7med@gmail.com"),
                const SizedBox(
                  height: 12,
                ),
                const CustomExpectedDate(),
                const SizedBox(
                  height: 5,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text("  This Field is Required",
                  style: TextStyle(fontSize: 12,color: Colors.red),),
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                    height: height * .07,
                    icon: AppAssets.time,
                    title1: "Expected Visit Time",
                    title2: " *",
                    title3: "18:30 pm"),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                    height: height * .07,
                    icon: AppAssets.id,
                    title1: "ID Number",
                    title2: "",
                    title3: "E.g: xxxxxxxxxxxxxx "),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                    isMessage: true,
                    height: height * .15,
                    icon: AppAssets.message,
                    title1: "Visit Reason",
                    title2: " *",
                    title3: "visiting a relative to celebrate her birthday"),
                const SizedBox(
                  height: 24,
                ),
                const CustomNextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
