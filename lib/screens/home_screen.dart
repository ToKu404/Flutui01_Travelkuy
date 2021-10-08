import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelkuy/constant/constant.dart';
import 'package:travelkuy/widgets/bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        title: SvgPicture.asset("assets/svg/travelkuy_logo.svg"),
        elevation: 0,
      ),
      backgroundColor: mBackgroundColor,
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
