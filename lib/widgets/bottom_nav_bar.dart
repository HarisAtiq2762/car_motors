import 'package:car_motors/screens/home_screen.dart';
import 'package:flutter/material.dart';
class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeScreen(),
    );
  }
}
