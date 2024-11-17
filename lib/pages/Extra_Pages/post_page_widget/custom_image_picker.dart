import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:work_finder/constant/colors/custom_colors.dart';

class CustomImagePicker extends StatefulWidget {
  const CustomImagePicker({super.key});

  @override
  ImagePickerState createState() => ImagePickerState();
}

class ImagePickerState extends State<CustomImagePicker> {
  File? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.image_rounded),
        TextButton(
          onPressed: _pickImage,
          child: const Text(
            "Add a Photo",
            style: TextStyle(fontSize: 17, color: CustomColors.dark),
          ),
        ),
        if (_image != null) 
          Image.file(
            _image!,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
      ],
    );
  }
}
