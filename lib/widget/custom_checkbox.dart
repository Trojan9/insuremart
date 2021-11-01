
import 'package:flutter/material.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/size_calculator.dart';

class CustomCheckBox extends StatelessWidget {
  final Widget widget;
  final Function onPressed;
  final Color borderColor, checkColor, iconColor, containerColor, checkboxColor ;
  final String text;    
      CustomCheckBox({
       this.onPressed, this.widget, this.text,  this.borderColor, this.checkColor, this.iconColor, this.containerColor, this.checkboxColor});

  @override
  Widget build(BuildContext context) {
    return      GestureDetector(
               onTap: onPressed,
                     child: Container(
                   height: screenAwareSize(65, context),
                   width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: borderColor, width: 2),
                    color: containerColor,
                  ),
                        child: widget ?? 
                  Row(
                    children: [
                      CustomText('$text' , textAlign: TextAlign.left, fontSize: 14,),
                      Spacer(),
                      Container(
                        height: screenAwareSize(25, context),
                        width: screenAwareSize(25, context, width: true),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                         color: checkboxColor,
                        ),
                        child: CustomIcon(icon: Icons.check, color: iconColor, size: 23,)
                      )
                  
                  ],
                  ),
                 ),
               );
  }
}