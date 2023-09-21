import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrimonial/common/constant/font_style.dart';
import 'package:matrimonial/common/custom_widget/custom_appbar.dart';
import 'package:matrimonial/common/custom_widget/custom_button.dart';

import '../../common/constant/color_constants.dart';
class FamilyDetailScreen extends StatefulWidget {
  const FamilyDetailScreen({Key? key}) : super(key: key);

  @override
  State<FamilyDetailScreen> createState() => _FamilyDetailScreenState();
}

class _FamilyDetailScreenState extends State<FamilyDetailScreen> {
  final List<String> _locations = ['Male', 'Female', 'Other'];
  String ? _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,

      appBar: PreferredSize(preferredSize: Size.fromHeight(45.h), child: CustomAppBar(
        title: Text("Family Detail",style: AppStyles.whiteColor16Text.copyWith(fontSize: 20.sp),),
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h,),
              Text("Family Type",style: AppStyles.hint16text),
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
                  hint: const Text('Select Family Type'), // Not necessary for Option 1
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
              Text("Family Status",style: AppStyles.hint16text),
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
                  hint: const Text('Select Family Status'), // Not necessary for Option 1
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
              Text("Family Value",style: AppStyles.hint16text),
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
                  hint: const Text('Select Family Value'), // Not necessary for Option 1
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
              Text("Family Income",style: AppStyles.hint16text),
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
                  hint: const Text('Select Family Income'), // Not necessary for Option 1
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
              Text("Father's Occupation",style: AppStyles.hint16text),
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
                  hint: const Text('Select Fathers Occupation'), // Not necessary for Option 1
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
              Text("Mother's Occupation",style: AppStyles.hint16text),
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
                  hint: const Text("Select Mother's Occupation"), // Not necessary for Option 1
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
              Text("No. of Sisters",style: AppStyles.hint16text),
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
                  hint: const Text('Select No. of Sisters'), // Not necessary for Option 1
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
              Text("No. of Brothers",style: AppStyles.hint16text),
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
                  hint: const Text('Select No. of Brothers'), // Not necessary for Option 1
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
              Text("Native Country",style: AppStyles.hint16text),
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
                  hint: const Text('Select Native Country'), // Not necessary for Option 1
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
              SizedBox(height: 10.h,)

            ],
          ),
        ),
      ),

    );
  }
}
