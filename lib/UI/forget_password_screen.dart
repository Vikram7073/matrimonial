import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrimonial/common/constant/font_style.dart';
import 'package:matrimonial/common/custom_widget/custom_appbar.dart';
import 'package:matrimonial/common/custom_widget/custom_button.dart';
import 'package:matrimonial/common/custom_widget/custom_textfield.dart';

import '../common/constant/color_constants.dart';
import '../common/constant/image.dart';
class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: PreferredSize(preferredSize: Size.fromHeight(45.h), child: CustomAppBar(
        title: Text("Forget Password",style: AppStyles.whiteColor16Text.copyWith(fontSize: 20.sp),),
      )),
      body: Center(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 60.w),
                child: Image.asset(ImageControl.loginImg,height: 200.h,width: 200.w,),
              ),
              SizedBox(height: 35.h,),

              CustomTextField(
                maxLines: 1,
                maxLength: 50,
                fillColor: ColorConstants.whiteColor,
                headingText: "Email",
              ),
              SizedBox(height: 40.h,),
              CustomButton(
                onTap: (){
                Navigator.pop(context);
              },
                text: "Continue",),
            ],
          ),
        ),
      ),
    );
  }
}
