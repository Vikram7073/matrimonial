import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/constant/common_fuction.dart';
import '../../common/constant/image.dart';
import '../../common/constant/string.dart';
import '../common/constant/color_constants.dart';
import 'bottom_bar_model.dart';

//ignore: must_be_immutable
class DashboardScreen extends StatefulWidget {
  String ? type;
  int? index;
  bool? fromListCon;
  bool? fromConfirm;
  int? from;
  DashboardScreen({Key? key,this.fromListCon = false,this.type,this.fromConfirm= false,this.from,this.index}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      BlocProvider.of<BottomNavigationSelectionBloc>(context).add(BottomNavigationSelectionRefreshEvent(position: widget.index ?? 0));
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        CommonFunction.onWillPop(context);
        return Future.value(false);
      },
      child: BlocBuilder<BottomNavigationSelectionBloc,BottomNavigationSelectionState>(
          builder: (context,state){
            if(state is BottomNavigationSelectionIndexState){
              return Scaffold(
                backgroundColor: Colors.transparent,
                resizeToAvoidBottomInset: false,
                extendBody: true,
                body: BlocProvider.of<BottomNavigationSelectionBloc>(context).widgetOptions.elementAt(state.index),
                bottomNavigationBar: SizedBox(
                  height: 85.h,
                  child: BottomNavigationBar(
                    selectedFontSize: 12.sp,
                    unselectedFontSize: 12.sp,
                    backgroundColor: Colors.white,
                    selectedLabelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.themeColor,
                      fontSize: 12.sp,
                    ),
                    showSelectedLabels: true,
                    unselectedLabelStyle:  GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                    items:  <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: BlocProvider.of<BottomNavigationSelectionBloc>(context).onSelectedHomes == false ?
                        Padding(
                          padding: EdgeInsets.only(bottom: 6.h),
                          child: const Icon(Icons.home),
                        ):Container(
                          padding: EdgeInsets.all(6.r),
                          decoration:  BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4)),
                              color: ColorConstants.greyColor.withOpacity(0.2)
                          ),
                          child: const Icon(Icons.home),
                        ),
                        label: StringControl.home,
                      ),
                      BottomNavigationBarItem(
                        icon: BlocProvider.of<BottomNavigationSelectionBloc>(context).onSelectedJob  == false?
                        Padding(
                          padding: EdgeInsets.only(bottom: 6.h),
                          child:Image.asset(ImageControl.couple,height: 27.h,color: ColorConstants.blackColor,),
                        ):Container(
                          padding: EdgeInsets.all(6.r),
                          decoration:  BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4)),
                              color: ColorConstants.greyColor.withOpacity(0.2)
                          ),
                          child: Image.asset(ImageControl.couple,height: 27.h,),
                        ),
                        label: "Matches",
                      ),
                      BottomNavigationBarItem(
                        icon: BlocProvider.of<BottomNavigationSelectionBloc>(context).onSelectedNotification  == false?
                        Padding(
                          padding: EdgeInsets.only(bottom: 6.h),
                          child: const Icon(Icons.favorite),
                        ):Container(
                          padding: EdgeInsets.all(6.r),
                          decoration:  BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4)),
                              color: ColorConstants.greyColor.withOpacity(0.2)
                          ),
                          child:const Icon(Icons.favorite),
                        ),
                        label: "Shortlist",
                      ),
                      BottomNavigationBarItem(
                        icon: BlocProvider.of<BottomNavigationSelectionBloc>(context).onSelectedProfile  == false ?
                        Padding(
                          padding: EdgeInsets.only(bottom: 6.h),
                          child:  Image.asset(ImageControl.crown,height: 27.h,color: ColorConstants.blackColor,),
                        ):Container(
                          padding: EdgeInsets.all(6.r),
                          decoration:  BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4)),
                              color: ColorConstants.greyColor.withOpacity(0.2)
                          ),
                          child:Image.asset(ImageControl.crown,height: 27.h,),
                        ),
                        label: "Upgrade",
                      ),
                      BottomNavigationBarItem(
                        icon: BlocProvider.of<BottomNavigationSelectionBloc>(context).onSelectedProfile1  == false ?
                        Padding(
                          padding: EdgeInsets.only(bottom: 6.h),
                          child: const Icon(Icons.person),
                        ):Container(
                          padding: EdgeInsets.all(6.r),
                          decoration:  BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4)),
                              color: ColorConstants.greyColor.withOpacity(0.2)
                          ),
                          child:const Icon(Icons.person),
                        ),
                        label: StringControl.profile,
                      ),
                    ],
                    type: BottomNavigationBarType.fixed,
                    currentIndex: state.index,
                    iconSize: 30.h,
                    onTap: (index){
                      BlocProvider.of<BottomNavigationSelectionBloc>(context).add(UpdateSelectedRefreshEvent(index));
                      if (index == 0) {
                        BlocProvider.of<BottomNavigationSelectionBloc>(context).add(
                            BottomNavigationSelectionRefreshEvent(position: index));
                      }
                      if (index == 1) {
                        BlocProvider.of<BottomNavigationSelectionBloc>(context).add(
                            BottomNavigationSelectionRefreshEvent(position: index));
                      }
                      if (index == 2) {
                        BlocProvider.of<BottomNavigationSelectionBloc>(context).add(
                            BottomNavigationSelectionRefreshEvent(position: index));
                      }
                      if (index == 3) {
                        BlocProvider.of<BottomNavigationSelectionBloc>(context).add(
                            BottomNavigationSelectionRefreshEvent(position: index));
                      }
                      if (index == 4) {
                        BlocProvider.of<BottomNavigationSelectionBloc>(context).add(
                            BottomNavigationSelectionRefreshEvent(position: index));
                      }
                    },
                    elevation: 5,
                    unselectedItemColor: Colors.black,
                    selectedItemColor: ColorConstants.themeColor,
                    showUnselectedLabels: true,
                  ),
                ),
              );
            }
            else {
              return const SizedBox();
            }
          }),
    );
  }

}
