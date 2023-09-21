import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrimonial/UI/bottom_bar.dart';
import 'package:matrimonial/common/constant/color_constants.dart';
import 'package:matrimonial/common/constant/font_style.dart';
import 'package:matrimonial/common/custom_widget/custom_button.dart';
import 'package:matrimonial/common/custom_widget/custom_textfield.dart';

import '../common/constant/image.dart';
import 'forget_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ScrollController scrollController = ScrollController();
  TextEditingController passwordController=TextEditingController();
  FocusNode passFieldFocus=FocusNode();
  FocusNode emailFocus=FocusNode();



  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal:10.w,vertical: 15.h),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 60.w),
                        child: Image.asset(ImageControl.loginImg,height: 200.h,width: 200.w,),
                      ),
                      SizedBox(height: 10.h,),
                      Text("Login",style: AppStyles.themeColor18text.copyWith(fontSize: 35.sp),),
                      SizedBox(height: 20.h,),
                      CustomTextField(
                        focusNode: emailFocus,
                        onSubmit: (val){
                          FocusScope.of(context).requestFocus(passFieldFocus);
                        },
                        maxLines: 1,
                        maxLength: 20,
                        fillColor: ColorConstants.whiteColor,
                        headingText: "Email ",
                        keyboardType: TextInputType.text,
                      ),
                      CustomTextField(
                        focusNode: passFieldFocus,
                        controller: passwordController,
                        fillColor: ColorConstants.whiteColor,
                        keyboardType: TextInputType.text,
                        headingText: "Password ",
                      ),
                      SizedBox(height: 15.h,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordScreen()));
                        },
                        child: Align(
                          alignment: Alignment.topRight,
                            child: Text("Forgot Password",style: AppStyles.themeColor14text,)),
                      ),
                      SizedBox(height: 40.h,),

                      CustomButton(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
                      },text: "Login",),
                      SizedBox(height: 20.h,),
                      Center(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'Don’t have an account ? ',style: AppStyles.themeColor12text.copyWith(color: ColorConstants.blackColor,fontSize: 14.sp)),
                              TextSpan(text: 'Sign Up',style: AppStyles.themeColor12text.copyWith(fontSize: 14.sp),
                                recognizer: TapGestureRecognizer()..onTap = () {
                                 // locator<NavigationService>().push(RegisterScreenRoute());
                                },),
                            ],
                          ),
                        ),
                      ),
                     // Padding( padding: EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom )),
                      SizedBox(height: 100,)



                    ]

                  ),
                ),
              ),
      ),
    );
  }
}
