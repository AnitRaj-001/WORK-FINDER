import 'package:flutter/material.dart';
import 'package:work_finder/constant/colors/custom_colors.dart';

class TextBox extends StatelessWidget {
  final String texthint;
  final TextEditingController? controller;

  const TextBox({super.key, required this.texthint, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 7),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: CustomColors.scaffoldColor,
          border: Border.all(color: CustomColors.borderColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextField(
          controller: controller, 
          style: const TextStyle(
            fontSize: 15,
            color: CustomColors.fontcolor,
            fontWeight: FontWeight.w700,
          ),
          decoration: InputDecoration(
            hintText: texthint, 
            hintStyle: const TextStyle(
              fontSize: 14,
              color: CustomColors.borderColor,
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          ),
        ),
      ),
    );
  }
}
