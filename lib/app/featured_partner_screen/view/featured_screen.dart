import 'package:flutter/material.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({super.key});

  @override
  State<FeaturedScreen> createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  final List<FeatureScreenDataModel> featuredScreen = [
    FeatureScreenDataModel(
      imagePath: 'images/feature10.png',
      title: 'Tacos Nanchas',
    ),
    FeatureScreenDataModel(
      imagePath: 'images/featyre7.png',
      title: 'McDonald\'s',
    ),
    FeatureScreenDataModel(
      imagePath: 'images/feature11.png',
      title: 'KFC Foods',
    ),
    FeatureScreenDataModel(
      imagePath: 'images/feature12.png',
      title: 'Cafe MayField’s',
    ),
    FeatureScreenDataModel(
      imagePath: 'images/featyre7.png',
      title: 'McDonald\'s',
    ),
    FeatureScreenDataModel(
      imagePath: 'images/feature13.png',
      title: 'Coffe Cafe',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'Featured Partners',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff010F07),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 348,
          ),
          itemCount: featuredScreen.length,
          itemBuilder: (context, index) {
            final model = featuredScreen[index];

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      title: model.title,
                      imagePath: model.imagePath,
                    ),
                  ),
                );
              },
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          model.imagePath,
                          fit: BoxFit.cover,
                          height: 280,
                        ),
                        Positioned(
                          top: 222,
                          left: 14,
                          child: Row(
                            children: [
                              Image.asset('images/fast-delivery.png'),
                              SizedBox(width: 5),
                              Text(
                                "25 min",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 245,
                          left: 14,
                          child: Row(
                            children: [
                              Image.asset('images/delivery.png'),
                              SizedBox(width: 5),
                              Text(
                                "Free",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                              SizedBox(
                                width: 54,
                              ),
                              Container(
                                height: 20,
                                width: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xffEEA734),
                                ),
                                child: Center(
                                  child: Text(
                                    "4.5",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      model.title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff010F07),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Chinese",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff868686),
                          ),
                        ),
                        SizedBox(width: 8),
                        Image.asset('images/Oval.png'),
                        SizedBox(width: 8),
                        Text(
                          "American",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff868686),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class FeatureScreenDataModel {
  final String imagePath;
  final String title;

  FeatureScreenDataModel({
    required this.imagePath,
    required this.title,
  });
}

class DetailScreenDataModel {
  final String imagePath;
  final String title;

  DetailScreenDataModel({required this.imagePath, required this.title});
}

class DetailScreen extends StatefulWidget {
  final String title;
  final String imagePath;

  DetailScreen({required this.title, required this.imagePath, Key? key})
      : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<String> text = ["Beef & Lamb", "SeaFood", "Appitizers", "Dim Sum"];
  final List<DetailScreenDataModel> detailScreenDataList = [
    DetailScreenDataModel(
      imagePath: 'images/feature14.png',
      title: 'Cookie Sandwich',
    ),
    DetailScreenDataModel(
      imagePath: 'images/feature15.png',
      title: 'Chow Fun',
    ),
    DetailScreenDataModel(
      imagePath: 'images/feature16.png',
      title: 'Dim Sum',
    ),
  ];

  List<bool> tapped = List.generate(5, (index) => false);
  List<bool> tapped1 = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrap the entire body inside a scrollable widget
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Your Stack with header image, etc.
            SizedBox(
              height: 280,
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    'images/Header-image.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 54,
                    left: 31,
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xffFFFFFF),
                        ),
                        SizedBox(
                          width: 223,
                        ),
                        Image.asset("images/share.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.search,
                          color: Color(0xffFFFFFF),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 255,
                    left: 283,
                    right: 20,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(5, (index) {
                          return GestureDetector(
                              onTap: () {
                                setState(() {
                                  tapped[index] = !tapped[index];
                                });
                              },
                              child: AnimatedContainer(
                                margin: EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: tapped[index]
                                      ? Color(0xffFFFFFF)
                                      : Colors.grey,
                                ),
                                duration: Duration(seconds: 2),
                                width: 8,
                                height: 5,
                              ));
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mayfield Bakery & \nCafe',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff242424),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '\$\$',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff868686),
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
                        'Chinese',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff868686),
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
                        'American',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff868686),
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
                        'Deshi food',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff868686),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        '4.3',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff010F07),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Image.asset('images/rating.png'),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '200+ Ratings',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff010F07),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/delivery.png',
                        color: Color(0xffEEA734),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Free',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff010F07),
                            ),
                          ),
                          Text(
                            'Delivery',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff010F07),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 27,
                      ),
                      Row(
                        children: [
                          Image.asset('images/clock.png'),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Free',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff010F07),
                                ),
                              ),
                              Text(
                                'Minutes',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff010F07),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 59,
                          ),
                          Container(
                            height: 38,
                            width: 113,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: Color(0xffEEA734),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Take away',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffEEA734),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Text(
                    'Featured Items',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff010F07),
                    ),
                  ),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: detailScreenDataList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(right: 14),
                            height: 230,
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  detailScreenDataList[index].imagePath,
                                  fit: BoxFit.cover,
                                  width: 160,
                                  height: 140,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  detailScreenDataList[index].title,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff010F07),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      '\$\$',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff010F07),
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                    Image.asset('images/Oval.png'),
                                    SizedBox(width: 8),
                                    Text(
                                      "Chinese",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff010F07),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    height: 32,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: text.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              tapped[index] = !tapped[index];
                            });
                          },
                          child: SizedBox(
                            width: 180,
                            height: 32,
                            child: Text(
                              text[index],
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: tapped[index]
                                    ? Color(0xff010F07)
                                    : Color(0xff868686),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('data'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
