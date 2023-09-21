import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:matrimonial/UI/login_screen.dart';

import '../common/constant/color_constants.dart';
import '../common/constant/common_fuction.dart';
import '../common/constant/font_style.dart';
import '../common/custom_widget/custom_button.dart';
import '../common/custom_widget/custom_textfield.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int groupValue = 0;
  DateTime? pickedDate;
  DateTime ? selectedDate;
  List _locations = ['A', 'B', 'C', 'D'];

  String  ?_selectedLocation="A";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 20.h),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                  Text("Register",style: AppStyles.themeColor18text.copyWith(fontSize: 35.sp),),
                  SizedBox(height: 20.h,),

                  CustomTextField(
                    headingText: "First Name  ",
                  ),
                  CustomTextField(
                    headingText: "Last Name ",
                  ),
                  CustomTextField(
                    headingText: "Email ",
                  ),
                  CustomTextField(
                    headingText: "Mobile No ",
                  ),
                  CustomTextField(
                    headingText: "Password ",
                  ),
                  CustomTextField(
                    headingText: "Confirm Password ",
                  ),
                  SizedBox(height: 10.h,),
                  Text("Select Gendor",style: AppStyles.gray16Text.copyWith(color: ColorConstants.headingTextColor),),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          contentPadding: EdgeInsets.zero,
                          activeColor: ColorConstants.themeColor,
                            value: 1,
                            groupValue: groupValue,
                            onChanged: (val){
                          setState((){});
                          groupValue=val??0;
                        },title: Text("Male")),
                      ),
                      Expanded(
                        child: RadioListTile(
                            contentPadding: EdgeInsets.zero,

                            activeColor: ColorConstants.themeColor,
                            value: 2,
                            groupValue: groupValue,
                            onChanged: (val){
                          setState((){});
                          groupValue=val??0;
                        },title: Text("Female")),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Date Of Birth",style: AppStyles.gray16Text.copyWith(color: ColorConstants.headingTextColor),),
                      //SizedBox(width: 20.w,),
                      IconButton(onPressed: () async {
                        pickedDate=await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            //which date will display when user open the picker
                            firstDate: DateTime(1950),
                            //what will be the previous supported year in picker
                            lastDate: DateTime
                                .now()) ;//what will be the up to supported date in picker

                          //then usually do the future job
                          if (pickedDate == null) {
                            //if user tap cancel then this function will stop
                            return;
                          }
                          setState(() {
                            //for rebuilding the ui
                            selectedDate = pickedDate;
                          });

                      }, icon: Icon(Icons.calendar_month,color: ColorConstants.themeColor,)),
                      pickedDate==null ? SizedBox():  Text(CommonFunction().dateTimeConvertMMMFormat(pickedDate.toString()),style: AppStyles.themeColor14text,)
                    ],
                  ),

                  SizedBox(height: 30.h,),

                  CustomButton(onTap: (){},text: "Sign Up",),
                  SizedBox(height: 20.h,),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: ' have an account ? ',style: AppStyles.themeColor12text.copyWith(color: ColorConstants.blackColor,fontSize: 14.sp)),
                          TextSpan(text: 'Login',style: AppStyles.themeColor12text.copyWith(fontSize: 14.sp),
                            recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                            },),
                        ],
                      ),
                    ),
                  )

                ]

            ),
          ),
        ),
      ),
    );
  }
}
