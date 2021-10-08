import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:travelkuy/constant/constant.dart';
import 'package:travelkuy/models/carousel_model.dart';
import 'package:travelkuy/widgets/bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

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
      body: Container(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    left: mPadding * 2, bottom: mPadding * 3),
                child: Text(
                  "Hi, Ikhsan ini promo untukmu 💪",
                  style: mTitleStyle,
                )),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(horizontal: mPadding * 2),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 160,
                    child: Swiper(
                      onIndexChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      autoplay: true,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: carousels.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(mPadding),
                            image: DecorationImage(
                              image: AssetImage(
                                carousels[index].image,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: mPadding,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: mPadding, right: mPadding * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: map<Widget>(carousels, (index, image) {
                      return Container(
                        height: 6,
                        width: 6,
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(left: mPadding),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              _current == index ? mBlueColor : mSubtitleColor,
                        ),
                      );
                    }),
                  ),
                  Text(
                    "More...",
                    style: mMoreDiscountStyle,
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: mPadding * 2, top: mPadding * 3),
              child: Text(
                "Let\'s Booking!",
                style: mTitleStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
