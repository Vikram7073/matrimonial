
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/color_constants.dart';


class CustomButton extends StatelessWidget
{
  double? buttonWidth = 0;
  void Function() onTap;
  String? text;
  double? buttonHeight;
  double? textSize;
  Color? buttonColor;
  Color? textColor;
  double? horizontal;
  Color? color;
  BorderRadiusGeometry ? borderRadius;
  CustomButton({ Key? key,this.textSize = 18, this.horizontal,this.color, this.buttonHeight ,  this.buttonWidth, this.textColor, required this.onTap,
    this.text,this.borderRadius, this.buttonColor = ColorConstants.blackColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool pad;
    return InkWell(
      highlightColor:Colors.transparent ,
      onTap: onTap,
      child: Container(
        height: buttonHeight??40.h,
        width: buttonWidth??double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: color?? ColorConstants.themeColor,width: 1),
            color:color??ColorConstants.themeColor,
          borderRadius: borderRadius??BorderRadius.circular(10.r),
        ),
        child: Text(text??"",
          style: GoogleFonts.poppins(
            color: ColorConstants.whiteColor,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500
          ),
        ),
      ),

    );
  }
}