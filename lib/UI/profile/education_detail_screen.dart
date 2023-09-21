import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrimonial/common/constant/font_style.dart';
import 'package:matrimonial/common/custom_widget/custom_appbar.dart';
import 'package:matrimonial/common/custom_widget/custom_button.dart';
import 'package:matrimonial/common/custom_widget/custom_textfield.dart';

import '../../common/constant/color_constants.dart';
class EducationDetailScreen extends StatefulWidget {
  const EducationDetailScreen({Key? key}) : super(key: key);

  @override
  State<EducationDetailScreen> createState() => _EducationDetailScreenState();
}

class _EducationDetailScreenState extends State<EducationDetailScreen> {
  final List<String> _locations = ['Male', 'Female', 'Other'];
  String ? _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,

      appBar: PreferredSize(preferredSize: Size.fromHeight(45.h), child: CustomAppBar(
        title: Text("Education Detail",style: AppStyles.whiteColor16Text.copyWith(fontSize: 20.sp),),
      )),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h,),
            Text("Education And Qualification",style: AppStyles.hint16text),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
              ),
              child: DropdownButton(
                isExpanded: true,
                underline: const SizedBox(),
                hint: const Text('Select Education And Qualification'), // Not necessary for Option 1
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue;
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    value: location,
                    child: Text(location),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 10.h,),
            Text("College / University",style: AppStyles.hint16text),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
              ),
              child: DropdownButton(
                isExpanded: true,
                underline: const SizedBox(),
                hint: const Text('Select College'), // Not necessary for Option 1
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue;
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    value: location,
                    child: Text(location),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 10.h,),
            Text("Employeed In",style: AppStyles.hint16text),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
              ),
              child: DropdownButton(
                isExpanded: true,
                underline: const SizedBox(),
                hint: const Text('Select Employeed In'), // Not necessary for Option 1
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue;
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    value: location,
                    child: Text(location),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 10.h,),
            Text("Working As",style: AppStyles.hint16text),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
              ),
              child: DropdownButton(
                isExpanded: true,
                underline: const SizedBox(),
                hint: const Text('Select Working As'), // Not necessary for Option 1
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue;
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    value: location,
                    child: Text(location),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 10.h,),
            Text("Annual Income",style: AppStyles.hint16text),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
              ),
              child: DropdownButton(
                isExpanded: true,
                underline: const SizedBox(),
                hint: const Text('Select Annual Income'), // Not necessary for Option 1
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue;
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    value: location,
                    child: Text(location),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 30.h,),
            CustomButton(onTap: (){},text: "Save",),





          ],
        ),
      ),
    );
  }
}
