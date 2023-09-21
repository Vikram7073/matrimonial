import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrimonial/UI/bottom_bar.dart';
import 'package:matrimonial/UI/profile/profile_page.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import '../common/constant/color_constants.dart';
import '../common/constant/common_fuction.dart';
import '../common/constant/font_style.dart';
import 'change_password screen.dart';
class ProfileMenuScreen extends StatefulWidget {
  const ProfileMenuScreen({Key? key}) : super(key: key);

  @override
  State<ProfileMenuScreen> createState() => _ProfileMenuScreenState();
}

class _ProfileMenuScreenState extends State<ProfileMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              width: double.infinity,
              decoration:  BoxDecoration(
                  color: ColorConstants.themeColor
              ),
              child: Column(
                children: [
                  SizedBox(height: 45.h,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35.r),
                    child: CachedNetworkImage(
                      imageUrl: "",
                      imageBuilder:
                          (context, imageProvider) =>
                          Container(
                            height: 70.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                      placeholder: (context, url) =>
                          Shimmer(
                            duration: const Duration(seconds: 1),
                            //Default value
                            interval: const Duration(seconds: 0),
                            //Default value: Duration(seconds: 0)
                            color: ColorConstants.whiteColor,
                            //Default value
                            colorOpacity: 0,
                            //Default value
                            enabled: true,
                            //Default value
                            direction: const ShimmerDirection
                                .fromLTRB(),
                            //Default Value
                            child: Container(
                              color:
                              ColorConstants.greyDarkColor,
                            ),
                          ),
                      errorWidget: (context, url, error) =>
                          Icon(Icons.person,size: 50,),
                    ),
                  ),
                  Text("Vikram Rathore",style: AppStyles.whiteColor16Text,),
                  Text("vsingh977@gmail.com",style: AppStyles.whiteColor16Text,),
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const ProfilePage()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r)
                ),
                padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),

                child: Row(
                  children: [
                    Icon(Icons.person,size: 30.sp,),
                    SizedBox(width: 20.w,),
                    Text("Profile",style: AppStyles.blackColor14Text,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> DashboardScreen(index: 1,)));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r)
                ),
                padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),

                child: Row(
                  children: [
                    Icon(Icons.star,size: 30.sp,),
                    SizedBox(width: 20.w,),
                    Text("Matches",style: AppStyles.blackColor14Text,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> DashboardScreen(index: 3,)));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r)
                ),
                padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),

                child: Row(
                  children: [
                    Icon(Icons.payment,size: 30.sp,),
                    SizedBox(width: 20.w,),
                    Text("Membership Plans",style: AppStyles.blackColor14Text,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> DashboardScreen(index: 2,)));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r)
                ),
                padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),

                child: Row(
                  children: [
                    Icon(Icons.favorite_border,size: 30.sp,),
                    SizedBox(width: 20.w,),
                    Text("ShortListed",style: AppStyles.blackColor14Text,),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10.h,),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const ChangePasswordScreen()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r)
                ),
                padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),

                child: Row(
                  children: [
                    Icon(Icons.lock,size: 30.sp,),
                    SizedBox(width: 20.w,),
                    Text("Change Password",style: AppStyles.blackColor14Text,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            InkWell(
              onTap: (){
                //Navigator.push(context,MaterialPageRoute(builder: (context)=>const ProfilePage()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r)
                ),
                padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),

                child: Row(
                  children: [
                    Icon(Icons.support_agent,size: 30.sp,),
                    SizedBox(width: 20.w,),
                    Text("Support",style: AppStyles.blackColor14Text,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            InkWell(
              onTap: (){
               // Navigator.push(context,MaterialPageRoute(builder: (context)=>const ProfilePage()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r)
                ),
                padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),

                child: Row(
                  children: [
                    Icon(Icons.privacy_tip_outlined,size: 30.sp,),
                    SizedBox(width: 20.w,),
                    Text("Privacy Policy",style: AppStyles.blackColor14Text,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            InkWell(
              onTap: (){
                CommonFunction.onShowAlert(context, Text("Do you want to logout  ?"), () {
                  Navigator.pop(context);
                });
                // Navigator.push(context,MaterialPageRoute(builder: (context)=>const ProfilePage()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r)
                ),
                padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),

                child: Row(
                  children: [
                    Icon(Icons.logout,size: 30.sp,),
                    SizedBox(width: 20.w,),
                    Text("Logout",style: AppStyles.blackColor14Text,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 90.h,)
          ],
        ),
      ),
    );
  }
}
