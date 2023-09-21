import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../common/constant/color_constants.dart';
import '../common/constant/font_style.dart';
import '../common/constant/image.dart';
//ignore: must_be_immutable
class MatchDetailScreen extends StatefulWidget {
  const MatchDetailScreen({Key? key}) : super(key: key);

  @override
  State<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen> {
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w,),
          height: 45.h,
          decoration: const BoxDecoration(color: ColorConstants.themeColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Icon(Icons.mark_email_read_rounded,color: Colors.white,),
                  Text("Send request",style: AppStyles.whiteColor14Text,)
                ],
              ),
              Column(
                children: [
                  const Icon(Icons.favorite_border,color: Colors.white,),
                  Text("ShortListed",style: AppStyles.whiteColor14Text,)

                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(ImageControl.profileBackgroundImg),fit: BoxFit.fill)
              ),
              child: Padding(
                padding:  const EdgeInsets.only(top: 30,left: 10),
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back,color: Colors.white,),alignment: Alignment.topLeft),
              ),
            ),
            TabBar(
              unselectedLabelStyle: AppStyles.blackColor14Text,
              labelStyle: AppStyles.blackColor14Text,
              labelColor: ColorConstants.themeColor,
                indicatorColor: ColorConstants.themeColor,
                tabs: const [
                  Tab(text: "About",),
                  Tab(text: "Family",),
                  Tab(text: "Looking For",),
            ]),
            SizedBox(height: 10.h,),
            Expanded(
              child: TabBarView(
                  children: [
                TabView(),
                    FamilyTabView(),
                    PartnerTabView()

              ]),
            )
          ],
        ),
      ),
    );
  }
  Widget TabView(){
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Rahul ",style: AppStyles.blackColor14Text.copyWith(fontSize: 15.sp),),
            SizedBox(height: 5.h,),
            Row  (
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("23 years 5'5' ",style: AppStyles.blackColor14Text,),
                    Text("yadav-hindu ",style: AppStyles.blackColor14Text,),
                    Text("rajasthan-ind ",style: AppStyles.blackColor14Text,),
                  ],
                ),
                SizedBox(width: 10.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Software developer ",style: AppStyles.blackColor14Text,),
                    Text("B.Tech -  Rs. 2-3 lakh",style: AppStyles.blackColor14Text,),
                    Text("never married ",style: AppStyles.blackColor14Text,),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.h,),
            Text("About Myself ",style: AppStyles.blackColor14Text.copyWith(fontSize: 18.sp),),
            SizedBox(height: 5.h,),
            const ReadMoreText(
               'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
              trimLines: 3,
            colorClickableText: Colors.pink,
              trimMode: TrimMode.Line,
             trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
             ),
            SizedBox(height: 8.h,),
            Text("Carrier ",style: AppStyles.blackColor14Text.copyWith(fontSize: 18.sp),),
            SizedBox(height: 5.h,),
            Text("Employed In ",style: AppStyles.blackColor14Text),
            Text("Private Sector",style: AppStyles.grayLightColor12text),
            SizedBox(height: 3.h,),
            Text("Occupation ",style: AppStyles.blackColor14Text),
            Text("Teacher",style: AppStyles.grayLightColor12text),
            SizedBox(height: 3.h,),
            Text("Earning ",style: AppStyles.blackColor14Text),
            Text("4-5 Lakh per Annum",style: AppStyles.grayLightColor12text),
           SizedBox(height: 3.h,),
            Text("Education ",style: AppStyles.blackColor14Text),
            Text("M .ed",style: AppStyles.grayLightColor12text),

            SizedBox(height: 8.h,),
            Text("Horoscope ",style: AppStyles.blackColor14Text.copyWith(fontSize: 18.sp),),
            SizedBox(height: 5.h,),
            Text("Date & Time of Birth ",style: AppStyles.blackColor14Text),
            Text("Apr10,1995",style: AppStyles.grayLightColor12text),
            SizedBox(height: 8.h,),
            Text("Life Style ",style: AppStyles.blackColor14Text.copyWith(fontSize: 18.sp),),
            SizedBox(height: 5.h,),
            Text("Mother tongue",style: AppStyles.blackColor14Text),
            Text("Hindi",style: AppStyles.grayLightColor12text),
            SizedBox(height: 3.h,),
            Text("Diet",style: AppStyles.blackColor14Text),
            Text("Veg",style: AppStyles.grayLightColor12text),
            SizedBox(height: 3.h,),
            Text("Drink",style: AppStyles.blackColor14Text),
            Text("No",style: AppStyles.grayLightColor12text),
            SizedBox(height: 35.h,),
          ],
        ),
      ),
    );
  }
  Widget FamilyTabView(){
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.h,),
            Text("Family Detail",style: AppStyles.blackColor14Text.copyWith(fontSize: 18.sp),),

            SizedBox(height: 5.h,),
            Text("Family Type ",style: AppStyles.blackColor14Text),
            Text("Medium",style: AppStyles.grayLightColor12text),
            SizedBox(height: 3.h,),
            Text("Family Status ",style: AppStyles.blackColor14Text),
            Text("Affluent Class",style: AppStyles.grayLightColor12text),
            SizedBox(height: 3.h,),
            Text("Family Income ",style: AppStyles.blackColor14Text),
            Text("4-5 Lakh per Annum",style: AppStyles.grayLightColor12text),
            SizedBox(height: 3.h,),
            Text("Fathers Occupation ",style: AppStyles.blackColor14Text),
            Text("Professor",style: AppStyles.grayLightColor12text),
            SizedBox(height: 3.h,),
            Text("Mothers Occupation ",style: AppStyles.blackColor14Text),
            Text("House wife",style: AppStyles.grayLightColor12text),
            SizedBox(height: 3.h,),

            Text("No. Of Brothers",style: AppStyles.blackColor14Text),
            Text("2",style: AppStyles.grayLightColor12text),
            SizedBox(height: 3.h,),
            Text("No. Of Sisters",style: AppStyles.blackColor14Text),
            Text("2",style: AppStyles.grayLightColor12text),
            SizedBox(height: 35.h,),
          ],
        ),
      ),
    );
  }
  Widget PartnerTabView(){
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.h,),
            Center(
                child: Text("You Match 3/9 of Their Preferences",style: AppStyles.blackColor14Text.copyWith(fontSize: 16.sp),)),
            SizedBox(height: 10.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("He Should be  ",style: AppStyles.blackColor14Text),
                    Text("5'4' to 5'10'",style: AppStyles.grayLightColor12text),
                  ],
                ),
                const Icon(Icons.check)
                
              ],
            ),
            SizedBox(height: 3.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Age Should be ",style: AppStyles.blackColor14Text),
                    Text("24-26 year",style: AppStyles.grayLightColor12text),
                  ],
                ),
                const Icon(Icons.check)

              ],
            ),
            SizedBox(height: 3.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Material Status ",style: AppStyles.blackColor14Text),
                    Text("Never Married",style: AppStyles.grayLightColor12text),
                  ],
                ),
                const Icon(Icons.check)

              ],
            ),
            SizedBox(height: 3.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Religion ",style: AppStyles.blackColor14Text),
                    Text("Hindu",style: AppStyles.grayLightColor12text),
                  ],
                ),
                const Icon(Icons.check)

              ],
            ),
            SizedBox(height: 3.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Caste ",style: AppStyles.blackColor14Text),
                    Text("Yadav brahmin rajput",style: AppStyles.grayLightColor12text),
                  ],
                ),
                const Icon(Icons.check)

              ],
            ),
            SizedBox(height: 3.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Diet ",style: AppStyles.blackColor14Text),
                    Text("veg",style: AppStyles.grayLightColor12text),
                  ],
                ),
                const Icon(Icons.check)

              ],
            ),
            SizedBox(height: 3.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Drink ",style: AppStyles.blackColor14Text),
                    Text("Never",style: AppStyles.grayLightColor12text),
                  ],
                ),
                const Icon(Icons.check)

              ],
            ),
            SizedBox(height: 3.h,),
            SizedBox(height: 3.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("City ",style: AppStyles.blackColor14Text),
                    Text("Jaipur",style: AppStyles.grayLightColor12text),
                  ],
                ),
                const Icon(Icons.check)

              ],
            ),
            SizedBox(height: 3.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Country ",style: AppStyles.blackColor14Text),
                    Text("India",style: AppStyles.grayLightColor12text),
                  ],
                ),
                const Icon(Icons.check)

              ],
            ),
            SizedBox(height: 3.h,),

            SizedBox(height: 35.h,),
          ],
        ),
      ),
    );
  }

}
