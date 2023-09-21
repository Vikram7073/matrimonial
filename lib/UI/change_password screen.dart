import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrimonial/common/constant/font_style.dart';
import 'package:matrimonial/common/custom_widget/custom_appbar.dart';
import 'package:matrimonial/common/custom_widget/custom_button.dart';
import 'package:matrimonial/common/custom_widget/custom_textfield.dart';

import '../common/constant/color_constants.dart';
class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);
  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}
class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController confirmController=TextEditingController();
  TextEditingController existingPasswordController=TextEditingController();
  TextEditingController newPasswordController=TextEditingController();
  bool isConfirm=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: PreferredSize(preferredSize: Size.fromHeight(45.h), child: CustomAppBar(
        title: Text("Change Password",style: AppStyles.whiteColor16Text.copyWith(fontSize: 20.sp),),
      )),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("We advice you to use a strong password to keep your account safe",
                  style: AppStyles.blackColor14Text,),
                SizedBox(height: 20.h,),
                CustomTextField(
                  maxLength: 20,
                  maxLines: 1,
                  fillColor: ColorConstants.whiteColor,
                  controller: existingPasswordController,
                  headingText: "Existing Password",
                ),
                CustomTextField(
                  fillColor: ColorConstants.whiteColor,
                  maxLength: 20,
                  maxLines: 1,
                  controller: newPasswordController,
                  headingText: "New Password",
                ),
                CustomTextField(
                  fillColor: ColorConstants.whiteColor,
                  maxLines: 1,
                  obscureText:!isConfirm,
                  controller:confirmController ,
                  suffix: InkWell(
                      onTap: (){
                        setState(() {
                          isConfirm=!isConfirm;
                        });
                      },
                      child: Icon(isConfirm?Icons.remove_red_eye:Icons.remove_red_eye_outlined,color: ColorConstants.themeColor,)),
                  headingText: "Confirm Password",
                ),
                const Spacer(),
                CustomButton(onTap: (){
                  Navigator.pop(context);
                },text: "Update",
                buttonHeight: 40.h,),
                SizedBox(height: 10.h,),
              ]),
        ),
      ),
    );
  }
}
