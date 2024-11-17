import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:work_finder/common/common_widget/text_header.dart';
import 'package:work_finder/constant/colors/custom_colors.dart';
import 'package:work_finder/pages/Extra_Pages/post_page_widget/date_picker_fileld.dart';
import 'package:work_finder/pages/Extra_Pages/post_page_widget/drop_down_field.dart';
import 'package:work_finder/pages/Extra_Pages/post_page_widget/text_box.dart';

class DetailsForm extends StatelessWidget {
  const DetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: CustomColors.scaffoldColor,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: CustomColors.borderColor)
                ),child:  const Column(children: [
                  SizedBox(height: 10,),
                  TextHeader(textpart: "Select Work Category"),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 7),
                    child: DropDownField(options: ["Wall Painter","Electrician","Plumber","Maid","Waiter","Driver","Labour"],
                     hintText: "Select Options")
                  ),
                  TextHeader(textpart: "Company Name"),
                 TextBox(texthint: "Enter Company Name",),
                 TextHeader(textpart: "Address"),
                 TextBox(texthint: "Enter your Address",),
                 TextHeader(textpart: "Pay"),
                 TextBox(texthint: "Enter Payable Amount",),
                 TextHeader(textpart: "Work Start Date"),
                 DatePickerField()
                ],
                ),
              ),
            );
  }
}