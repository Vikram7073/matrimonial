import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common/constant/color_constants.dart';
import '../common/constant/font_style.dart';
import '../common/constant/image.dart';
import '../common/custom_widget/custom_appbar.dart';
import 'filter_screen.dart';
class MatchesScreen extends StatefulWidget {
  const MatchesScreen({Key? key}) : super(key: key);

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(45.h), child: CustomAppBar(
       leading: Text(""),
        title: Text("Matches",style: AppStyles.whiteColor16Text.copyWith(fontSize: 20.sp),),
        centerTile: true,
      )),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h,),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>FilterScreen()));
              },
              child: Container(
                alignment: Alignment.center,
                width: 90,
                height: 33.h,
                decoration: BoxDecoration(border: Border.all(color: ColorConstants.themeColor),
                    borderRadius: BorderRadius.circular(10.r)),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.filter_alt_rounded),
                    Text("Filter",style: AppStyles.blackColor14Text,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: Container(
                        height:MediaQuery.of(context).size.height*0.4,
                        width: MediaQuery.of(context).size.width*0.9,
                        margin: EdgeInsets.only(bottom: 10.h),
                        decoration: const BoxDecoration(
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
                            Row(
                              children: [
                                SizedBox(width: 20.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("23 years - 5'5 ",style: AppStyles.whiteColor14Text,),
                                    Text("yadav -hindu ",style: AppStyles.whiteColor14Text,),
                                    Text("rajasthan - india",style: AppStyles.whiteColor14Text,),
                                  ],
                                ),
                                SizedBox(width: 10.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Software developer ",style: AppStyles.whiteColor14Text,),
                                    Text(" B.Tech - Rs. 2-3 lakh",style: AppStyles.whiteColor14Text,),
                                    Text("never married ",style: AppStyles.whiteColor14Text,),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h,),

                            const Divider(color: Colors.white,height: 1,),
                            SizedBox(height: 5.h,),

                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 0.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Icon(Icons.mark_email_read_rounded,color: Colors.white,),
                                      Text("Send interest",style: AppStyles.whiteColor14Text,)
                                    ],
                                  ),
                                  SizedBox(width: 50.w,),
                                  Column(
                                    children: [
                                      Icon(Icons.favorite_border,color: Colors.white,),
                                      Text("ShortListed",style: AppStyles.whiteColor14Text,)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 8.h,),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}


