import 'package:flutter/material.dart';
import 'package:priyanhi_getx_ui/homepage/view/navigation_screen.dart/home_screen/data_file/home_screen._data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = ['images/BG.png', 'images/food.png', 'images/BG.png'];
  List<String> title = ['Krispy Creme', 'Mario Italiano', 'Krispy Creme'];
  List<String> text = [
    'St Georgece Terrace, Perth',
    'Hay street , Perth City',
    'St Georgece Terrace, Perth'
  ];
  List<String> title1 = ['McDonald’s', 'The Halal Guys', 'McDonald’s'];

  PageController pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 54, right: 20, left: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'DELIVERY TO',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Color(0xffEEA734),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Text(
                  'HayStreet, Perth',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff010F07),
                  ),
                ),
                Icon(Icons.keyboard_arrow_down_outlined),
                Spacer(),
                Text(
                  'Filter',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff010F07),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Image.asset(
              'images/Header.png',
              width: double.infinity,
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Featured\nPartners',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff010F07),
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffF8B64C),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 260,
              width: 414,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeScreenData.length,
                itemBuilder: (BuildContext context, int index) {
                  final model = homeScreenData[index];
                  return SizedBox(
                      height: 254,
                      width: 230,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              model.imagePath,
                              height: 160,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(height: 14),
                            Text(
                              model.title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff010F07),
                              ),
                            ),
                            Text(
                              model.detail,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff868686),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 36,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xffEEA734),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '4.5',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  '25min',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff010F07),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Image.asset('images/Oval.png'),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Free delivery',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff010F07),
                                  ),
                                ),
                              ],
                            ),
                          ]));
                },
              ),
            ),
            SizedBox(height: 24),
            Image.asset('images/Banner.png'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Picks \nRestaurants by \nteam',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff010F07),
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffF8B64C),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 260,
              width: 414,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeScreenData.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                      height: 254,
                      width: 230,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              images[index],
                              height: 160,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(height: 14),
                            Text(
                              title1[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff010F07),
                              ),
                            ),
                            Text(
                              text[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff868686),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 36,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xffEEA734),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '4.5',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  '25min',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff010F07),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Image.asset('images/Oval.png'),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Free delivery',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff010F07),
                                  ),
                                ),
                              ],
                            ),
                          ]));
                },
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Restaurants',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff010F07),
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffF8B64C),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Image.asset('images/BG.png')
          ],
        ),
      ),
    );
  }
}
