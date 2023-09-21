import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrimonial/common/constant/font_style.dart';
import 'package:matrimonial/common/custom_widget/custom_appbar.dart';

import '../common/constant/image.dart';
import 'match_detail_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(preferredSize: Size.fromHeight(45.h), child: CustomAppBar(
      leading: Container(
          margin: EdgeInsets.only(bottom: 5.h,top: 5.h),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green

          ),
          child: Text("VS",style: AppStyles.whiteColor14Text.copyWith(color: Colors.white),)),
         // title: Text("Matches",style: AppStyles.whiteColor16Text.copyWith(fontSize: 20.sp),),
           centerTile: true,
         actionIcon: [const Icon(Icons.notifications),SizedBox(width: 10.w,)],
         )),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:10.w,vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 10.h),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: Colors.green)

                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.cable),
                            SizedBox(width: 5.w,),
                            Text("0"),
                          ],
                        ),
                        Align(alignment: Alignment.topRight,
                            child: Text("Connection",style: AppStyles.blackColor14Text,))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 10.h),

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: Colors.green)

                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.send),
                            SizedBox(width: 5.w,),
                            Text("0"),
                          ],
                        ),
                        Align(alignment: Alignment.topRight,
                            child: Text("Interest Sent",style: AppStyles.blackColor14Text,))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 10.h),

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: Colors.green)

                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.remove_red_eye),
                            SizedBox(width: 5.w,),
                            Text("2"),
                          ],
                        ),
                        Align(alignment: Alignment.topRight,
                            child: Text("Profile Viewed",style: AppStyles.blackColor14Text,))
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 10.h),

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: Colors.green)

                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.keyboard_double_arrow_down_outlined),
                            SizedBox(width: 5.w,),
                            Text("0"),
                          ],
                        ),
                        Align(alignment: Alignment.topRight,
                            child: Text("Interests Received",style: AppStyles.blackColor14Text,))
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 10.h),

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: Colors.green)

                    ),
                    child: Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.favorite_border),
                            SizedBox(width: 5.w,),
                            Text("0"),
                          ],
                        ),
                        Text("Shortlisted Members",style: AppStyles.blackColor14Text,)
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: 10.h,),
              Text("Best Matches",style: AppStyles.blackColor14Text.copyWith(fontSize: 16.sp),),
              SizedBox(height: 10.h,),
              Container(
                height: MediaQuery.of(context).size.height*0.4,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  //physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MatchDetailScreen()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.r),
                          child: Container(
                            height:MediaQuery.of(context).size.height*0.4,
                            width: MediaQuery.of(context).size.width*0.9,
                            margin: EdgeInsets.only(right: 10.h),
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(ImageControl.profileBackgroundImg),fit: BoxFit.fill),

                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 20.w),
                                  child: Text("Rahul ",style: AppStyles.whiteColor16Text.copyWith(fontSize: 18.sp),),
                                ),
                                SizedBox(height: 5.h,),
                                Row  (
                                  children: [
                                    SizedBox(width: 20.w,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("23 years 5'5' ",style: AppStyles.whiteColor14Text,),
                                        Text("yadav-hindu ",style: AppStyles.whiteColor14Text,),
                                        Text("rajasthan-ind ",style: AppStyles.whiteColor14Text,),
                                      ],
                                    ),
                                    SizedBox(width: 10.w,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Software developer ",style: AppStyles.whiteColor14Text,),
                                        Text("B.Tech -  Rs. 2-3 lakh",style: AppStyles.whiteColor14Text,),
                                        Text("never married ",style: AppStyles.whiteColor14Text,),
                                      ],
                                    ),
                                  ],
                                ),
                                // SizedBox(height: 5.h,),
                                // const Divider(color: Colors.white,),
                                // Padding(
                                //   padding:  EdgeInsets.symmetric(horizontal: 20.w),
                                //   child: Row(
                                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       Column(
                                //         children: [
                                //           Icon(Icons.star,color: Colors.white,),
                                //           Text("Send interest",style: AppStyles.whiteColor14Text,)
                                //         ],
                                //       ),
                                //       SizedBox(width: 50.w,),
                                //       Column(
                                //         children: [
                                //           Icon(Icons.favorite_border,color: Colors.white,),
                                //           Text("ShortListed",style: AppStyles.whiteColor14Text,)
                                //         ],
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                SizedBox(height: 10.h,),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 10.h,),
              Text("New Matches",style: AppStyles.blackColor14Text.copyWith(fontSize: 16.sp),),
              SizedBox(height: 10.h,),
              Container(
                height: MediaQuery.of(context).size.height*0.4,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    //physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20.r),
                        child: Container(
                          height:MediaQuery.of(context).size.height*0.4,
                          width: MediaQuery.of(context).size.width*0.9,
                          margin: EdgeInsets.only(right: 10.h),
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(ImageControl.profileBackgroundImg),fit: BoxFit.fill),

                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: 20.w),
                                child: Text("Rahul ",style: AppStyles.whiteColor16Text.copyWith(fontSize: 18.sp),),
                              ),
                              SizedBox(height: 5.h,),
                              Row  (
                                children: [
                                  SizedBox(width: 20.w,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("23 years 5'5' ",style: AppStyles.whiteColor14Text,),
                                      Text("yadav-hindu ",style: AppStyles.whiteColor14Text,),
                                      Text("rajasthan-ind ",style: AppStyles.whiteColor14Text,),
                                    ],
                                  ),
                                  SizedBox(width: 10.w,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Software developer ",style: AppStyles.whiteColor14Text,),
                                      Text("B.Tech -  Rs. 2-3 lakh",style: AppStyles.whiteColor14Text,),
                                      Text("never married ",style: AppStyles.whiteColor14Text,),
                                    ],
                                  ),
                                ],
                              ),
                              // SizedBox(height: 5.h,),
                              // const Divider(color: Colors.white,),
                              // Padding(
                              //   padding:  EdgeInsets.symmetric(horizontal: 20.w),
                              //   child: Row(
                              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //     children: [
                              //       Column(
                              //         children: [
                              //           Icon(Icons.star,color: Colors.white,),
                              //           Text("Send interest",style: AppStyles.whiteColor14Text,)
                              //         ],
                              //       ),
                              //       SizedBox(width: 50.w,),
                              //       Column(
                              //         children: [
                              //           Icon(Icons.favorite_border,color: Colors.white,),
                              //           Text("ShortListed",style: AppStyles.whiteColor14Text,)
                              //         ],
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              SizedBox(height: 10.h,),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 80.h,)

            ],
          ),
        ),
      ),
    );
  }
}
