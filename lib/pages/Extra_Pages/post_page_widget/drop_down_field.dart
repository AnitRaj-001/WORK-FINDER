import 'package:flutter/material.dart';
import 'package:work_finder/constant/colors/custom_colors.dart';

class DropDownField extends StatefulWidget {
  final List<String> options;
  final String hintText;
  const DropDownField({super.key, required this.options, required this.hintText});

  @override
  State<DropDownField> createState() => _DropDownFieldState();
}

class _DropDownFieldState extends State<DropDownField> {
  final TextEditingController _controller = TextEditingController();
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _controller,
          readOnly: true, // Prevent manual editing
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: CustomColors.borderColor, fontSize: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: CustomColors.borderColor),
            ),
            suffixIcon: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                padding: const EdgeInsets.only(right: 10),
                icon: const Icon(Icons.arrow_drop_down, color: CustomColors.dark),
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                    _controller.text = value!; // Update the text field value
                  });
                },
                items: widget.options.map((option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(
                      option,
                      style: const TextStyle(fontSize: 15, color: CustomColors.fontcolor,fontWeight: FontWeight.w700),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
