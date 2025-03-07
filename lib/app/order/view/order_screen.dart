import 'package:flutter/material.dart';
import 'package:priyanhi_getx_ui/app/your_order/your_order_screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  String? _selectedCookie = '';
  int number = 0;

  final List<String> cookieOptions = [
    'Chocolate Chip',
    'Cookies and Cream',
    'Funfetti',
    'M and M',
    'Red Valvet',
    'Peanut Butter',
    'Snickerdoodle',
    'White Chocolate Macadamia',
  ];
  final List<String> cookieOptions1 = [
    'Chocolate Chip',
    'Cookies and Cream',
    'Funfetti',
    'M and M',
    'Red Valvet',
    'Peanut Butter',
    'Snickerdoodle',
    'White Chocolate Macadamia',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 280,
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    'images/Header-image.png',
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 54,
                    left: 20,
                    child: Icon(
                      Icons.cancel,
                      size: 34,
                      // color: Color(0xffFFFFFF),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cookie Sandwich',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff010F07),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    maxLines: 2,
                    'Shortbread, chocolate turtle cookies,and red velvet. 8 ounces cream cheese, softened.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff010F07),
                    ),
                  ),
                  SizedBox(
                    height: 21,
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
                    height: 34,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Choice of Top Cookie',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff010F07),
                        ),
                      ),
                      Container(
                        height: 32,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color.fromARGB(150, 245, 248, 76),
                        ),
                        child: Center(
                          child: Text(
                            'Required',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Color(0xffF8B64C),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: cookieOptions.length,
                    separatorBuilder: (context, index) => Divider(),
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Radio<String>(
                            activeColor: Color(0xffEEA734),
                            value: cookieOptions[index],
                            groupValue: _selectedCookie,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedCookie = value;
                              });
                            },
                          ),
                          Text(
                            cookieOptions[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff010F07),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Choice of Bottom Cookie',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff010F07),
                        ),
                      ),
                      Container(
                        height: 32,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color.fromARGB(150, 245, 248, 76),
                        ),
                        child: Center(
                          child: Text(
                            'Required',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Color(0xffF8B64C),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: cookieOptions.length,
                    separatorBuilder: (context, index) => Divider(),
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Radio<String>(
                            activeColor: Color(0xffEEA734),
                            value: cookieOptions[index],
                            groupValue: _selectedCookie,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedCookie = value;
                              });
                            },
                          ),
                          Text(
                            cookieOptions[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff010F07),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add Special Instructions',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff010F07),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Divider(),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            number--;
                          });
                        },
                        icon: Container(
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                            color: Color(0xffF8F8F8),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xff979797),
                            ),
                          ),
                          child: Icon(
                            Icons.remove,
                            size: 24,
                            color: Color(0xff010F07),
                          ),
                        ),
                      ),
                      Text(number.toString()),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            number++;
                          });
                        },
                        icon: Container(
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                            color: Color(0xffF8F8F8),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xff979797),
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 24,
                            color: Color(0xff010F07),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => YourOrderScreen(),
                          ));
                    },
                    child: Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffEEA734),
                      ),
                      child: Center(
                        child: Text(
                          'Add to Order (\$11.98)',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




// * Radio Button *
//  Row(
                //   children: [
                //     Radio<String>(
                //       activeColor: Color(0xffEEA734),
                //       value: 'Chocolate Chip',
                //       groupValue: _selectedCookie,
                //       onChanged: (String? value) {
                //         setState(() {
                //           _selectedCookie = value;
                //         });
                //       },
                //     ),
                //     Text(
                //       'Chocolate Chip',
                //       style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.w400,
                //         color: Color(0xff010F07),
                //       ),
                //     ),
                //   ],
                // ),
                // Divider(),
                // Row(
                //   children: [
                //     Radio<String>(
                //       activeColor: Color(0xffEEA734),
                //       value: 'Peanut Butter',
                //       groupValue: _selectedCookie,
                //       onChanged: (String? value) {
                //         setState(() {
                //           _selectedCookie = value;
                //         });
                //       },
                //     ),
                //     Text(
                //       'Peanut Butter',
                //       style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.w400,
                //         color: Color(0xff010F07),
                //       ),
                //     ),
                //   ],
                // ),
                // Divider(),
                // Row(
                //   children: [
                //     Radio<String>(
                //       activeColor: Color(0xffEEA734),
                //       value: 'Oatmeal',
                //       groupValue: _selectedCookie,
                //       onChanged: (String? value) {
                //         setState(() {
                //           _selectedCookie = value;
                //         });
                //       },
                //     ),
                //     Text(
                //       'Oatmeal',
                //       style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.w400,
                //         color: Color(0xff010F07),
                //       ),
                //     ),
                //   ],
                // ),
