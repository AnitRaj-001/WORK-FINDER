import 'package:flutter/material.dart';
import 'package:work_finder/constant/colors/custom_colors.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({super.key, required this.textpart});

  final String textpart;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 18),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          textpart,
          style: const TextStyle(
              color: CustomColors.fontcolor,
              fontSize: 18,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
