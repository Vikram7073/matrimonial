import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrimonial/UI/profile/partner_preference_screen.dart';
import 'package:matrimonial/UI/profile/profile_basic_detail_screen.dart';
import 'package:matrimonial/common/constant/color_constants.dart';
import 'package:matrimonial/common/constant/font_style.dart';
import 'package:matrimonial/common/custom_widget/custom_appbar.dart';

import 'education_detail_screen.dart';
import 'family_detail_screen.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int ? currentIndex;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(45.h), child: CustomAppBar(
          title: Text("Profile Detail",style: AppStyles.whiteColor16Text.copyWith(fontSize: 20.sp),),
        )),
        body: Center(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 25.h),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(10.r)
                  ),
                  child: Icon(Icons.person,size: 70.sp,),
                ),
                SizedBox(height: 20.h,),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: ColorConstants.grayDarkColor,),
                      )
                  ),
                  child: TabBar(
                    indicatorColor: ColorConstants.themeColor,
                      labelColor: ColorConstants.themeColor,
                      unselectedLabelStyle: AppStyles.blackColor14Text,
                      unselectedLabelColor: ColorConstants.blackColor,
                      labelStyle: AppStyles.blackColor14Text,
                      tabs: const [
                    Tab(text: "About Me",),
                    Tab(text: "Partner Preference",)
                  ]),
                ),
                SizedBox(height: 15.h,),
                Expanded(
                  child: TabBarView(children: [
                    aboutMe(),partnerPreference()
                  ]),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget aboutMe(){
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Basic Detail",style: AppStyles.blackColor14Text.copyWith(fontSize: 16.sp),),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileBasicDetailScreen()));
                      }, icon: Icon(Icons.add,color: ColorConstants.themeColor,)),
                    ],
                  ),
                  Divider(),
                  Text("Amit kumar vaishnav",style: AppStyles.blackColor14Text.copyWith(fontSize: 15),),
                  Padding(
                    padding:  EdgeInsets.only(right: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Male",style: AppStyles.blackColor14Text),
                            Text("Brahmin",style: AppStyles.blackColor14Text),
                            Text("jaipur",style: AppStyles.blackColor14Text),

                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("15-08-1992",style: AppStyles.blackColor14Text),
                            Text("Material Status",style: AppStyles.blackColor14Text),
                            Text("Rajasthan",style: AppStyles.blackColor14Text),
                          ],
                        ),

                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
            child:Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("Education Detail",style: AppStyles.blackColor14Text.copyWith(fontSize: 16.sp),),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const EducationDetailScreen()));
                      }, icon: const Icon(Icons.add,color: ColorConstants.themeColor)),
                    ],
                  ),
                  const Divider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" Education Qualification",style: AppStyles.blackColor14Text),
                      SizedBox(height: 2.h,),
                      Text(" B.tech",style: AppStyles.grayLightColor12text),
                      SizedBox(height: 10.h,),
                      Text("College / University",style: AppStyles.blackColor14Text),
                      SizedBox(height: 2.h,),
                      Text("rajasthan  technical university",style: AppStyles.grayLightColor12text),
                      SizedBox(height: 10.h,),
                      Text("Employee In",style: AppStyles.blackColor14Text),
                      SizedBox(height: 2.h,),
                      Text("Civil Services",style: AppStyles.grayLightColor12text),



                    ],
                  ),
                  SizedBox(height: 10.h,)


                ],
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
            child:Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("Family Detail",style: AppStyles.blackColor14Text.copyWith(fontSize: 16.sp),),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const FamilyDetailScreen()));
                      }, icon: const Icon(Icons.add,color: ColorConstants.themeColor)),
                    ],
                  ),
                  const Divider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" About My Family",style: AppStyles.blackColor14Text),
                      SizedBox(height: 2.h,),
                      Text("Joint",style: AppStyles.grayLightColor12text),
                      SizedBox(height: 10.h,),
                      Text("Family Background",style: AppStyles.blackColor14Text),
                      SizedBox(height: 2.h,),
                      Text("Middle class",style: AppStyles.grayLightColor12text),
                      SizedBox(height: 10.h,),
                      Text("Father Is",style: AppStyles.blackColor14Text),
                      SizedBox(height: 2.h,),
                      Text("Ex servicemen",style: AppStyles.grayLightColor12text),
                      SizedBox(height: 10.h,),
                      Text("Mother Is",style: AppStyles.blackColor14Text),
                      SizedBox(height: 2.h,),
                      Text("Housewife",style: AppStyles.grayLightColor12text),
                      SizedBox(height: 10.h,),
                      Text("Bother And Sister",style: AppStyles.blackColor14Text),
                      SizedBox(height: 2.h,),
                      Text("5",style: AppStyles.grayLightColor12text),
                      SizedBox(height: 10.h,)
                    ],
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 80.h,)
        ],
      ),
    );
  }


  Widget partnerPreference(){
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Partner Preference",style: AppStyles.blackColor14Text.copyWith(fontSize: 16.sp),),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const PartnerPreferenceScreen()));
                      }, icon: const Icon(Icons.add,color: ColorConstants.themeColor,)),
                    ],
                  ),
                  const Divider(),
                  Padding(
                    padding:  EdgeInsets.only(right: 20.w),
                    child:  SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Age",style: AppStyles.blackColor14Text.copyWith(fontSize: 15.sp)),
                          Text("26-30 year of age",style: AppStyles.grayLightColor12text),
                          SizedBox(height: 5.h,),
                          Text("Height",style: AppStyles.blackColor14Text.copyWith(fontSize: 15.sp)),
                          Text("5'2 - 5'7",style: AppStyles.grayLightColor12text),
                          SizedBox(height: 5.h,),
                          Text("country/State",style: AppStyles.blackColor14Text.copyWith(fontSize: 15.sp)),
                          Text("Rajasthan",style: AppStyles.grayLightColor12text),
                          SizedBox(height: 5.h,),
                          Text("Education",style: AppStyles.blackColor14Text.copyWith(fontSize: 15.sp)),
                          Text("BCA",style: AppStyles.grayLightColor12text),
                          SizedBox(height: 5.h,),
                          Text("Occupation",style: AppStyles.blackColor14Text.copyWith(fontSize: 15.sp)),
                          Text("Civil Services",style: AppStyles.grayLightColor12text),
                          SizedBox(height: 5.h,),
                          Text("Income",style: AppStyles.blackColor14Text.copyWith(fontSize: 15.sp)),
                          Text("Does not matter",style: AppStyles.grayLightColor12text),
                          SizedBox(height: 5.h,),
                          Text("Working",style: AppStyles.blackColor14Text.copyWith(fontSize: 15.sp)),
                          Text("Yes",style: AppStyles.grayLightColor12text),
                          SizedBox(height: 5.h,),
                          Text("Religion",style: AppStyles.blackColor14Text.copyWith(fontSize: 15.sp)),
                          Text("Hindu",style: AppStyles.grayLightColor12text),
                          SizedBox(height: 5.h,),
                          Text("Caste",style: AppStyles.blackColor14Text.copyWith(fontSize: 15.sp)),
                          Text("Brahmin",style: AppStyles.grayLightColor12text),
                          SizedBox(height: 5.h,),
                          Text("Mother Tongue",style: AppStyles.blackColor14Text.copyWith(fontSize: 15.sp)),
                          Text("Hindi",style: AppStyles.grayLightColor12text),
                          SizedBox(height: 5.h,),
                          Text("Marital Status",style: AppStyles.blackColor14Text.copyWith(fontSize: 15.sp)),
                          Text("Never Married",style: AppStyles.grayLightColor12text),
                          SizedBox(height: 5.h,),
                          Text("Physical Status",style: AppStyles.blackColor14Text.copyWith(fontSize: 15.sp)),
                          Text("Donot Matter",style: AppStyles.grayLightColor12text),
                        ],
                      ),
                    ),
                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Male",style: AppStyles.blackColor14Text),
                            Text("Brahmin",style: AppStyles.blackColor14Text),
                            Text("jaipur",style: AppStyles.blackColor14Text),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("15-08-1992",style: AppStyles.blackColor14Text),
                            Text("Material Status",style: AppStyles.blackColor14Text),
                            Text("Rajasthan",style: AppStyles.blackColor14Text),
                          ],
                        ),
                      ],
                    )*/
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 80.h,)
        ],
      ),
    );
  }
}
