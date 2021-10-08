import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelkuy/constant/constant.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: mFillColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: const Offset(0, 5),
          )
        ],
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(mPadding),
            topRight: Radius.circular(mPadding)),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SvgPicture.asset("assets/icons/home_colored.svg")
                  : SvgPicture.asset("assets/icons/home.svg"),
              label: "Home"),
          BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? SvgPicture.asset("assets/icons/order_colored.svg")
                  : SvgPicture.asset("assets/icons/order.svg"),
              label: "My Order"),
          BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SvgPicture.asset("assets/icons/watch_colored.svg")
                  : SvgPicture.asset("assets/icons/watch.svg"),
              label: "Watch List"),
          BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? SvgPicture.asset("assets/icons/account_colored.svg")
                  : SvgPicture.asset("assets/icons/account.svg"),
              label: "Account"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: mBlueColor,
        unselectedItemColor: mSubtitleColor,
        selectedFontSize: 12,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
