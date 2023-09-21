import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrimonial/common/constant/font_style.dart';
import 'package:matrimonial/common/custom_widget/custom_appbar.dart';
import 'package:matrimonial/common/custom_widget/custom_button.dart';
import 'package:matrimonial/common/custom_widget/custom_field.dart';
import '../../common/constant/color_constants.dart';
class PartnerPreferenceScreen extends StatefulWidget {
  const PartnerPreferenceScreen({Key? key}) : super(key: key);

  @override
  State<PartnerPreferenceScreen> createState() => _PartnerPreferenceScreenState();
}

class _PartnerPreferenceScreenState extends State<PartnerPreferenceScreen> {
  final List<String> _locations = ['Male', 'Female', 'Other'];
  String ? _selectedLocation;
  TextEditingController ageFromController=TextEditingController();
  List<String> variantsList = ['Noida',"Delhi","Goa","Mumbai","Bihar","Bangalore","UP","Pune","Surat","Nashik"];
  String ? _selectedvarient;
  List<String> selectedList = [];
  List<String> selectedItems = [];
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5','Item 6','Item 7','Item 8','Item 9','Item 10','Item 11','Item 12','Item 13','Item 5',];

  void toggleItem(String item) {
    setState(() {
      if (selectedItems.contains(item)) {
        selectedItems.remove(item);
      } else {
        selectedItems.add(item);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,

      appBar: PreferredSize(preferredSize: Size.fromHeight(45.h), child: CustomAppBar(
        title: Text("Partner Preference",style: AppStyles.whiteColor16Text.copyWith(fontSize: 20.sp),),

      )),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h,),
              Text("Age",style: AppStyles.hint16text),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(
                    child:  CustomField(

                      controller: ageFromController,
                      fillColor: ColorConstants.whiteColor,
                      labelText: "From",
                      keyboardType: TextInputType.number,
                      maxLines: 1,maxLength: 3,
                    ),
                  ),
                  SizedBox(width: 5.w,),
                  Text("To",style: AppStyles.blackColor14Text.copyWith(fontWeight: FontWeight.bold),),
                  SizedBox(width: 5.w,),

                  Expanded(
                    child: CustomField(
                      inputFormatters: [ FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),],
                      keyboardType: TextInputType.number,
                      maxLines: 1,maxLength: 3,
                      fillColor: ColorConstants.whiteColor,labelText: "To",),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Text("Height",style: AppStyles.hint16text),
              Row(
                children: [
                  Expanded(
                    child:  Container(
                      margin: EdgeInsets.symmetric(vertical: 5.h),
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                      ),
                      child: DropdownButton(
                        isExpanded: true,
                        underline: const SizedBox(),
                        hint: const Text('Select Height'), // Not necessary for Option 1
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
                  ),
                  SizedBox(width: 5.w,),
                  Text("To",style: AppStyles.blackColor14Text.copyWith(fontWeight: FontWeight.bold),),
                  SizedBox(width: 5.w,),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 5.h),
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                      ),
                      child: DropdownButton(
                        isExpanded: true,
                        underline: const SizedBox(),
                        hint: const Text('Select Height'), // Not necessary for Option 1
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
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Text("Physical Status",style: AppStyles.hint16text),
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
                  hint: const Text('Select Physical Status'), // Not necessary for Option 1
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
              Text("Education",style: AppStyles.hint16text),
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
                  hint: const Text('Select Education'), // Not necessary for Option 1
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
              Text("Working",style: AppStyles.hint16text),
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
                  hint: const Text('Select Working'), // Not necessary for Option 1
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
              Text("Salary Expectation",style: AppStyles.hint16text),
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
                  hint: const Text('Select Salary Expectation'), // Not necessary for Option 1
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
              Text("Diet",style: AppStyles.hint16text),
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
                  hint: const Text('Select Diet'), // Not necessary for Option 1
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
              Text("Smoking Habit",style: AppStyles.hint16text),
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
                  hint: const Text('Select Smoking Habit'), // Not necessary for Option 1
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
              Text("Drinking Habit",style: AppStyles.hint16text),
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
                  hint: const Text('Select Drinking Habit'), // Not necessary for Option 1
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
              Text("Religion",style: AppStyles.hint16text),
              SizedBox(height: 5.h,),
              ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (context) {
                        return StatefulBuilder(builder: (BuildContext context, StateSetter setState){
                          return     AlertDialog(
                            title: Text('Select Items'),
                            content: Container(
                              width: double.maxFinite,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: items.map((item) {
                                    setState((){});
                                    bool isSelected = selectedItems.contains(item);
                                    return ListTile(
                                      title: Text(item),
                                      onTap: () {
                                        setState((){});
                                        toggleItem(item);
                                      },
                                      leading: isSelected
                                          ? const Icon(
                                        Icons.check_box,
                                        color: ColorConstants.themeColor,
                                      )
                                          : const Icon(Icons.check_box_outline_blank),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            // actions: <Widget>[
                            //   FlatButton(
                            //     onPressed: () {
                            //       Navigator.of(context).pop();
                            //     },
                            //     child: Text('CANCEL'),
                            //   ),
                            //   FlatButton(
                            //     onPressed: () {
                            //       Navigator.of(context).pop();
                            //       setState(() {
                            //         // Perform actions with selected items if needed.
                            //         print('Selected Items: $selectedItems');
                            //       });
                            //     },
                            //     child: Text('OK'),
                            //   ),
                            // ],
                          );
                        });

                      },
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 10.w,right: 8.w,top: 10.h,bottom: 10.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4)),
                      borderRadius: BorderRadius.circular(10.r)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 230,
                                child: Text(selectedItems.length == 0 ? "Select Religion":"${selectedItems.join(", ")}",)),
                            SizedBox(width: 15.w,),
                            selectedItems.length == 0 ? const SizedBox():
                            InkWell(
                              onTap: (){
                                selectedItems.clear();
                                setState(() {

                                });
                              },
                                child: const Icon(Icons.clear,color: ColorConstants.themeColor,)),
                          ],
                        ),
                        SizedBox(width: 20.w,),
                        const Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                );
              },),

              SizedBox(height: 10.h,),
              Text("Caste",style: AppStyles.hint16text),
              SizedBox(height: 5.h,),
              ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder: (BuildContext context, StateSetter setState){
                            return     AlertDialog(
                              title: Text('Select Items'),
                              content: Container(
                                width: double.maxFinite,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: items.map((item) {
                                      setState((){});
                                      bool isSelected = selectedItems.contains(item);
                                      return ListTile(
                                        title: Text(item),
                                        onTap: () {
                                          setState((){});
                                          toggleItem(item);
                                        },
                                        leading: isSelected
                                            ? const Icon(
                                          Icons.check_box,
                                          color: ColorConstants.themeColor,
                                        )
                                            : const Icon(Icons.check_box_outline_blank),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                              // actions: <Widget>[
                              //   FlatButton(
                              //     onPressed: () {
                              //       Navigator.of(context).pop();
                              //     },
                              //     child: Text('CANCEL'),
                              //   ),
                              //   FlatButton(
                              //     onPressed: () {
                              //       Navigator.of(context).pop();
                              //       setState(() {
                              //         // Perform actions with selected items if needed.
                              //         print('Selected Items: $selectedItems');
                              //       });
                              //     },
                              //     child: Text('OK'),
                              //   ),
                              // ],
                            );
                          });

                        },
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 10.w,right: 8.w,top: 10.h,bottom: 10.h),
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4)),
                          borderRadius: BorderRadius.circular(10.r)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                  width: 230,
                                  child: Text(selectedItems.length == 0 ? "Select Caste":"${selectedItems.join(", ")}",)),
                              SizedBox(width: 15.w,),
                              selectedItems.length == 0 ? const SizedBox():
                              InkWell(
                                  onTap: (){
                                    selectedItems.clear();
                                    setState(() {

                                    });
                                  },
                                  child: const Icon(Icons.clear,color: ColorConstants.themeColor,)),
                            ],
                          ),
                          SizedBox(width: 20.w,),
                          const Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  );
                },),
              SizedBox(height: 30.h,),
              CustomButton(onTap: (){},text: "Save",),

            ],
          ),
        ),
      ),
    );
  }
}
