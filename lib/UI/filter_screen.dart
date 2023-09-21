import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrimonial/common/constant/color_constants.dart';
import 'package:matrimonial/common/constant/font_style.dart';
import 'package:matrimonial/common/custom_widget/custom_appbar.dart';
import 'package:matrimonial/common/custom_widget/custom_button.dart';
class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool selectAll = false;
  List<ListItem> items = List.generate(5, (index) => ListItem(name: 'Item $index'),);
  bool selectedAll = false;
  List<ListItem> itemIncome = List.generate(5, (index) => ListItem(name: 'Item $index'),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(45.h), child: CustomAppBar(
        title: Text("Filter",style: AppStyles.whiteColor16Text.copyWith(fontSize: 20.sp),),
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: Text("Material Status",style: AppStyles.blackColor14Text.copyWith(fontSize: 16.sp),),
              ),
              SizedBox(
                height: 30.h,
                child: CheckboxListTile(
                  dense: true,
                    contentPadding: EdgeInsets.zero,
                    activeColor: ColorConstants.themeColor,
                  controlAffinity: ListTileControlAffinity.leading,
                    value: selectAll,
                    title: Text("Select All",style: AppStyles.blackColor14Text),
                    onChanged: (value){
                      setState(() {
                        selectAll = value!;
                        items.forEach((item) {
                          item.isChecked = value!;
                        });
                      });
                    }),
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),

                padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context,index){
                return SizedBox(
                  height: 40.h,
                  child: CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    activeColor: ColorConstants.themeColor,
                      controlAffinity: ListTileControlAffinity.leading,

                      value: items[index].isChecked,
                      title: Text("never married"),
                      onChanged: (val){
                        setState(() {
                          items[index].isChecked = val!;
                          // Check if all items are selected
                          selectAll = items.every((item) => item.isChecked);
                        });
                  }),
                );
              }),
              SizedBox(height: 15.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: Text("Income",style: AppStyles.blackColor14Text.copyWith(fontSize: 16.sp),),
              ),
              SizedBox(height: 35.h,
                child: CheckboxListTile(
                    dense: true,
                    contentPadding: EdgeInsets.all(0),
                    activeColor: ColorConstants.themeColor,
                    controlAffinity: ListTileControlAffinity.leading,
                    value: selectedAll,
                    title: Text("Select All",style: AppStyles.blackColor14Text,),
                    onChanged: (value){
                      setState(() {
                        selectedAll = value!;
                        itemIncome.forEach((item) {
                          item.isChecked = value!;
                        });
                      });
                    }),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: itemIncome.length,
                  itemBuilder: (context,index){
                    return SizedBox(
                      height: 40.h,
                      child: CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          activeColor: ColorConstants.themeColor,
                          controlAffinity: ListTileControlAffinity.leading,

                          value: itemIncome[index].isChecked,
                          title: Text("never married"),
                          onChanged: (val){
                            setState(() {
                              itemIncome[index].isChecked = val!;
                              // Check if all items are selected
                              selectedAll = itemIncome.every((item) => item.isChecked);
                            });
                          }),
                    );
                  }),
              SizedBox(height: 30.h,),
              CustomButton(onTap: (){
                Navigator.pop(context);
              },text: "Apply",),
            ],
          ),
        ),
      ),
    );
  }
}

class ListItem {
  String name;
  bool isChecked;
  ListItem({required this.name, this.isChecked = false});
}