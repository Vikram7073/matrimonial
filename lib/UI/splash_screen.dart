import 'package:flutter/material.dart';


import '../common/constant/color_constants.dart';
import '../common/constant/image.dart';
import 'login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          color:ColorConstants.themeColor,
              child: Image.asset(ImageControl.splashImg,scale: 3,color: ColorConstants.whiteColor,),
        ),
      );
  }
}
