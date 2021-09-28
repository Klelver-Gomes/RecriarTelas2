import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage4 extends StatefulWidget {
  const HomePage4({Key? key}) : super(key: key);

  @override
  _HomePage4State createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(191, 173, 166, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  color: Color.fromRGBO(85, 40, 91, 1),
                ),
                padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                height: 700,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.delete_outline,
                            color: Colors.white, size: 30),
                      ],
                    ),
                    Text(
                      'Cart',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    Row(
                      children: [
                        Text(
                          'DELIVER TO  ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          '797 CASSIE SPURS',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded,
                            color: Colors.white),
                        SizedBox(width: 185),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'NOW',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_down_rounded,
                                color: Colors.white),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'FROM  ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          'New York Donut Co.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 130),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(85, 40, 91, 1),
                            border: Border.all(color: Colors.white70),
                          ),
                          width: 100,
                          height: 25,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.schedule_outlined,
                                  color: Colors.white, size: 16),
                              Text(
                                '  15-20 min',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    _createItemsColum('image/raspDonut.png','Raspberry', '\$12,95'),
                    SizedBox(height: 20),
                    _createItemsColum('image/blueDonuts.png','Blueberry', '\$9,75  '),
                    SizedBox(height: 40),

                    Column(
                      children: [
                        Row(
                          children: [
                            _createContainerLeadingColum('image/carDelivery.png'),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Delivery',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white54,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'FREE',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white54,
                                  ),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            _createContainerLeadingColum('image/cupomDesc.png'),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Promo Code',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white54,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'No code',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white54,
                                      ),
                                    ),
                                    SizedBox(width: 255),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      width: 30,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          '+',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),

            Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70,
                    ),
                    margin: EdgeInsets.only(bottom: 20, left: 20, right: 5),
                    width: 100,
                    height: 60,
                    child: Center(
                      child: Text(
                        '\$22,70',
                        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    margin: EdgeInsets.only(bottom: 20, right: 20),
                    width: 300,
                    height: 60,
                    child: Text(
                      'CHECKOUT',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _createItemsColum(String image, String type, String price){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _createContainerLeading(image),
        Text(
          'x1',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  type,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(width: 210),
                Text(
                  'x',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Text(
              'Donut',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 175),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white12,
                      ),
                      width: 30,
                      height: 30,
                      child: Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: 30,
                      height: 30,
                      child: Center(
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget _createContainerLeadingColum(String image) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white70,
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 10),
              ],
            ),
            margin: EdgeInsets.only(left: 10, right: 20),
            width: 60,
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image, scale: 4, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _createContainerLeading(String image) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 10),
              ],
            ),
            margin: EdgeInsets.only(left: 10, right: 20),
            width: 60,
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image, scale: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
