import 'package:car_motors/bloc/saveCar/save_car_bloc.dart';
import 'package:car_motors/models/darkTheme/darkTheme.dart';
import 'package:car_motors/providers/homeCarAnimation.dart';
import 'package:car_motors/screens/home_screen.dart';
import 'package:car_motors/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(MyApp()
    // MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (_) => DarkThemeProvider()),
    //     ChangeNotifierProvider(create: (_) => HomeCarAnimation()),
    //   ],
    //   child: MyApp(),
    // ),
  );
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 750),
      builder: (){
        return MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => SaveCarBloc()),
            ],
            child: MaterialApp(
                title: 'Car Showroom',
                debugShowCheckedModeBanner: false,
                theme: Styles.themeData(false, context),
                home: Scaffold(
                  backgroundColor: Colors.white,
                  body: HomeScreen(),
                )
            ),
        );
      },
    );
  }
  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
    await themeChangeProvider.darkThemePreference.getTheme();
  }
}

// class MyMainScreen extends StatelessWidget {
//   const MyMainScreen({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: MyBottomNavBar(),
//     );
//   }
// }
