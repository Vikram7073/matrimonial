import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'UI/bottom_bar_model.dart';
import 'UI/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
     // designSize: Size(360, 690),
      builder: (BuildContext context, Widget? child) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
      return MultiBlocProvider(
          providers: [
            BlocProvider<BottomNavigationSelectionBloc>(create: (context)=>BottomNavigationSelectionBloc()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Matrimonial",
            theme: ThemeData(
              primarySwatch: Colors.indigo,
            ),
            home: const SplashScreen(),
          ));
    },

    );
  }
}


