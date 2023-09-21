import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:matrimonial/common/constant/font_style.dart';
import 'package:matrimonial/common/custom_widget/custom_appbar.dart';
import 'package:matrimonial/common/custom_widget/custom_button.dart';
import 'package:matrimonial/common/custom_widget/custom_textfield.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../common/constant/color_constants.dart';
import '../../common/constant/common_fuction.dart';
class ProfileBasicDetailScreen extends StatefulWidget {
  const ProfileBasicDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProfileBasicDetailScreen> createState() => _ProfileBasicDetailScreenState();
}

class _ProfileBasicDetailScreenState extends State<ProfileBasicDetailScreen> {
  //image picker
  File ? imageTemp;
  File ? image;
  Future pickImage(ImageSource) async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource);
      if(image == null) return;
      imageTemp = File(image.path);
      //isImageSelect=true;
      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }


// date picker
  DateTime? selectedDate ;
   DateTime? picked;
  Future<void> _selectDate(BuildContext context) async {
     picked = await showDatePicker(
        context: context,
         builder: (BuildContext context, Widget ?child) {
           return Theme(
             data: ThemeData(
               primarySwatch: Colors.grey,
               splashColor: Colors.black,
               textTheme: const TextTheme(
                 subtitle1: TextStyle(color: Colors.black),
                 button: TextStyle(color: Colors.black),
               ),

               colorScheme: const ColorScheme.light(
                   primary: ColorConstants.themeColor,

                   onSecondary: Colors.black,
                   onPrimary: Colors.white,
                   surface: Colors.black,
                   onSurface: Colors.black,
                   secondary: Colors.black),
               dialogBackgroundColor: Colors.white,
             ),
             child: child ??Text(""),
           );
         },
        initialDate:DateTime.now(),
        firstDate: DateTime(1950),
        lastDate:DateTime.now() );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked??selectedDate;
      });
    }
  }

//dropDown
  final List<String> _locations = ['Male', 'Female', 'Other'];
  String ? _selectedLocation;

  //controller
  bool likeAndPreference=false;
  bool locationDetail=false;
  TextEditingController aboutController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,

      appBar: PreferredSize(preferredSize: Size.fromHeight(45.h), child: CustomAppBar(
        title: Text("Basic Detail",style: AppStyles.whiteColor16Text.copyWith(fontSize: 20.sp),),
      )),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Center(
                    child: SizedBox(
                      height: size*0.3,width: size*0.3,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.r),
                          child:image!= null ?
                          Image.file(image!,fit: BoxFit.fill,):
                          CachedNetworkImage(
                            imageUrl: "",
                            imageBuilder:
                                (context, imageProvider) =>
                                Container(
                                  height: 100.h,
                                  width: 100.w,
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
                              Container(
                                color: ColorConstants.headingTextColor,
                                  child: Icon(Icons.person,size: 70,)),
                          )


                      ),
                    ),
                  ),
                  Positioned(top: size*0.23,right:  size*0.28,
                      child: InkWell(
                        onTap: (){
                          showAlertDialog();
                          // pickImage(ImageSource.gallery);
                        },
                        child: Container(
                            height: 30.h,width: 30.w,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConstants.themeColor
                            ),
                            child: Icon(Icons.camera_alt,color: Colors.white,size: 20.sp,)),
                      )),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomTextField(
                fillColor: ColorConstants.whiteColor,
                headingText: "First Name",
                maxLines: 1,
                maxLength: 20,
              ),
              CustomTextField(
                fillColor: ColorConstants.whiteColor,

                headingText: "Last Name",
                maxLines: 1,
                maxLength: 20,
              ),
              CustomTextField(
                fillColor: ColorConstants.whiteColor,
                headingText: "Email Address",
                maxLines: 1,
                maxLength: 20,
              ),
              CustomTextField(
                fillColor: ColorConstants.whiteColor,
                headingText: "Phone Number",
                maxLines: 1,
                maxLength: 20,
              ),
              InkWell(
                onTap: (){
                  _selectDate(context);
                },
                child: CustomTextField(
                  fillColor: ColorConstants.whiteColor,
                  enable: false,
                  suffix: const Icon(Icons.calendar_month),
                  headingText: "First Name",
                  maxLines: 1,
                  hintText: picked==null?"Select DOB": CommonFunction().dateTimeConvertMMMFormat(picked.toString()),
                  maxLength: 20,
                ),
              ),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gender",style: AppStyles.hint16text),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5.h),
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                              color: ColorConstants.whiteColor,

                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                          ),
                          child: DropdownButton(
                            isExpanded: true,
                            underline: SizedBox(),
                            hint: const Text('Please Select Gender'), // Not necessary for Option 1
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
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Material Status",style: AppStyles.hint16text),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5.h),
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                              color: ColorConstants.whiteColor,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                          ),
                          child: DropdownButton(
                            isExpanded: true,
                            underline: SizedBox(),
                            hint: const Text('Please Select Gender'), // Not necessary for Option 1
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
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Height",style: AppStyles.hint16text),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5.h),
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                              color: ColorConstants.whiteColor,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                          ),
                          child: DropdownButton(
                            isExpanded: true,
                            underline: SizedBox(),
                            hint: const Text('Please Select Gender'), // Not necessary for Option 1
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
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mother tongue",style: AppStyles.hint16text),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5.h),
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                              color: ColorConstants.whiteColor,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                          ),
                          child: DropdownButton(
                            isExpanded: true,
                            underline: SizedBox(),
                            hint: const Text('Please Select Gender'), // Not necessary for Option 1
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
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Text("Religion",style: AppStyles.hint16text),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.h),
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                    color: ColorConstants.whiteColor,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                ),
                child: DropdownButton(
                  isExpanded: true,
                  underline: SizedBox(),
                  hint: const Text('Please Select Religion'), // Not necessary for Option 1
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
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Cast",style: AppStyles.hint16text),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5.h),
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                              color: ColorConstants.whiteColor,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                          ),
                          child: DropdownButton(
                            isExpanded: true,
                            underline: SizedBox(),
                            hint: const Text('Please Select Gender'), // Not necessary for Option 1
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
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Sub Cast",style: AppStyles.hint16text),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5.h),
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                              color: ColorConstants.whiteColor,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                          ),
                          child: DropdownButton(
                            isExpanded: true,
                            underline: SizedBox(),
                            hint: const Text('Please Select Gender'), // Not necessary for Option 1
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
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Manglik",style: AppStyles.hint16text),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5.h),
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                              color: ColorConstants.whiteColor,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                          ),
                          child: DropdownButton(
                            isExpanded: true,
                            underline: SizedBox(),
                            hint: const Text('Please Select Gender'), // Not necessary for Option 1
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
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dosh",style: AppStyles.hint16text),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5.h),
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                              color: ColorConstants.whiteColor,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                          ),
                          child: DropdownButton(
                            isExpanded: true,
                            underline: SizedBox(),
                            hint: const Text('Please Select Gender'), // Not necessary for Option 1
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
                      ],
                    ),
                  ),
                ],
              ),
              CustomTextField(
                fillColor: ColorConstants.whiteColor,
                controller: aboutController,
                headingText: "About",
                maxLines: 1,
                maxLength: 100,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 15.h,),
              InkWell(
                onTap: (){
                  setState(() {
                    locationDetail=!locationDetail;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.h,vertical: 8.h),
                  decoration: BoxDecoration(
                    color: ColorConstants.whiteColor,
                    border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Location Details",style: AppStyles.blackColor14Text.copyWith(fontSize: 18.sp)),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                      Visibility(
                        visible: locationDetail,
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h,),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Country",style: AppStyles.hint16text),
                                      Container(
                                        margin: EdgeInsets.symmetric(vertical: 5.h),
                                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                                        decoration: BoxDecoration(
                                            color: ColorConstants.whiteColor,
                                            borderRadius: BorderRadius.circular(10.r),
                                            border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                                        ),
                                        child: DropdownButton(
                                          isExpanded: true,
                                          underline: SizedBox(),
                                          hint: const Text('Please Select country'), // Not necessary for Option 1
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
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20.w,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("State",style: AppStyles.hint16text),
                                      Container(
                                        margin: EdgeInsets.symmetric(vertical: 5.h),
                                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                                        decoration: BoxDecoration(
                                            color: ColorConstants.whiteColor,
                                            borderRadius: BorderRadius.circular(10.r),
                                            border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                                        ),
                                        child: DropdownButton(
                                          isExpanded: true,
                                          underline: SizedBox(),
                                          hint: const Text('Please Select State'), // Not necessary for Option 1
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h,),
                            Text("district",style: AppStyles.hint16text),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5.h),
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              decoration: BoxDecoration(
                                  color: ColorConstants.whiteColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                              ),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: SizedBox(),
                                hint: const Text('Please Select District'), // Not necessary for Option 1
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              InkWell(
                onTap: (){
                  setState(() {
                    likeAndPreference=!likeAndPreference;
                  });

                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.h,vertical: 8.h),
                  decoration: BoxDecoration(
                    color: ColorConstants.whiteColor,
                    border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Like And Preference",style: AppStyles.blackColor14Text.copyWith(fontSize: 18.sp)),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                      Visibility(
                        visible: likeAndPreference,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h,),
                            Text("I Am Smoker",style: AppStyles.hint16text),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5.h),
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              decoration: BoxDecoration(
                                  color: ColorConstants.whiteColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                              ),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: SizedBox(),
                                hint: const Text('Please Select '), // Not necessary for Option 1
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
                            Text("I Drink Alcohol",style: AppStyles.hint16text),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5.h),
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              decoration: BoxDecoration(
                                  color: ColorConstants.whiteColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                              ),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: SizedBox(),
                                hint: const Text('Please Select '), // Not necessary for Option 1
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
                                  color: ColorConstants.whiteColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(color: ColorConstants.themeColor.withOpacity(0.4))
                              ),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: SizedBox(),
                                hint: const Text('Please Select '), // Not necessary for Option 1
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h,),
              CustomButton(onTap: (){},text: "save",)
            ],
          ),
        ),
      ),
    );
  }
  Future showAlertDialog(){
    return    showDialog(context: (context), builder: (context){
      return
        AlertDialog(
          title:  Text("Choose Option",style: AppStyles.blackDark14Colortext.copyWith(fontSize: 16.sp),),
          content: SizedBox(
            height: 65.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    pickImage(ImageSource.gallery);
                    Navigator.pop(context);

                  },
                  child: Row(
                    children: [
                      const Icon(Icons.image),
                      SizedBox(width: 15.h,),
                      Text('Gallery',style: AppStyles.blackDark14Colortext,),
                    ],
                  ),
                ),
                SizedBox(height: 15.h,),
                InkWell(
                  onTap: (){
                    pickImage(ImageSource.camera);
                    Navigator.pop(context);

                  },
                  child: Row(
                    children: [
                      const Icon(Icons.camera_alt),
                      SizedBox(width: 15.h,),

                      Text('Camera',style: AppStyles.blackDark14Colortext,),
                    ],
                  ),
                ),

              ],
            ),
          ),

        );
    }

    );
  }
}
