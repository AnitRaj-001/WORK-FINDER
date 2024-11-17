import 'package:flutter/material.dart';
import 'package:work_finder/constant/colors/custom_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: CustomColors.primaryColor,
      ),
      child: Text(title,style: const TextStyle(fontSize: 16,color: CustomColors.fontcolor,fontWeight: FontWeight.bold),),
    );
  }
}