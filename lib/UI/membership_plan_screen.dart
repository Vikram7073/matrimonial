import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrimonial/common/constant/color_constants.dart';
import 'package:matrimonial/common/constant/font_style.dart';
import 'package:matrimonial/common/custom_widget/custom_appbar.dart';
import 'package:matrimonial/common/custom_widget/custom_button.dart';
//ignore: must_be_immutable
class MembershipPlanScreen extends StatefulWidget {
  String ? type;
   MembershipPlanScreen({Key? key,this.type}) : super(key: key);

  @override
  State<MembershipPlanScreen> createState() => _MembershipPlanScreenState();
}

class _MembershipPlanScreenState extends State<MembershipPlanScreen> {
  int ? currentIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(45.h), child:
      CustomAppBar(
        title: Text("MemberShip Plan",style: AppStyles.whiteColor16Text.copyWith(fontSize: 20.sp),),
        leading: const Text(""),
        centerTile: true,
      )),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20.h,bottom: 80.h),
          itemCount: 12,
          shrinkWrap: true,
          itemBuilder: (context,index){
        return Container(
          margin: EdgeInsets.only(bottom: 12.h,left: 5.w,right: 5.w),
          padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Pro Light ",style: AppStyles.themeColor18text,),
                  Text("Montly",style: AppStyles.blackDarkColor14text.copyWith(fontSize: 13.sp),)
                ],
              ),
              Text("₹ 999 ",style: AppStyles.blackDarkColor14text,),
              SizedBox(height: 5.h,),
              Row(
                children: [
                  Icon(Icons.check,size: 20.sp,color: ColorConstants.blackColor,),
                  SizedBox(width: 10.w,),
                  Text("2X ",style: AppStyles.blackColor14Text,),

                ],
              ),
              SizedBox(height: 5.h,),
              Row(
                children: [
                  Icon(Icons.check,size: 20.sp,color: ColorConstants.blackColor,),
                  SizedBox(width: 10.w,),
                  Text("Perfect E-Matches ",style: AppStyles.blackColor14Text,),

                ],
              ),
              SizedBox(height: 5.h,),
              Row(
                children: [
                  Icon(Icons.check,size: 20.sp,color: ColorConstants.blackColor,),
                  SizedBox(width: 10.w,),
                  Text("Unlimited Personalized Messages ",style: AppStyles.blackColor14Text,),

                ],
              ),
              SizedBox(height: 5.h,),
              Row(
                children: [
                  Icon(Icons.check,size: 20.sp,color: ColorConstants.blackColor,),
                  SizedBox(width: 10.w,),
                  Text(" Bold Listing ",style: AppStyles.blackColor14Text,),

                ],
              ),
              SizedBox(height: 10.h,),
              CustomButton(onTap: (){
                setState(() {

                  currentIndex=index;
                });
              },text: "Buy Now",buttonHeight: 33.h,),
              
            ],
          ),
        );
      }),
    );
  }
}
