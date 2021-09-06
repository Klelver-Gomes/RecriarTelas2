import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('image/donutsBackground.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(40)),
                ),
                padding: EdgeInsets.only(top: 40, left: 20),
                height: 250,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white38,
                      ),
                      width: 80,
                      height: 40,
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios_rounded,
                              color: Colors.black, size: 16),
                          Text(
                            ' Back',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white38,
                          ),
                          width: 40,
                          height: 40,
                          child: Icon(Icons.shopping_bag_outlined,
                              color: Colors.black),
                        ),
                        SizedBox(width: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white38,
                          ),
                          width: 40,
                          height: 40,
                          child:
                              Icon(Icons.favorite_border, color: Colors.black),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: Colors.purple.shade700,
                //margin: EdgeInsets.only(top),
                padding: EdgeInsets.only(left: 40, right: 20, top: 40, bottom: 10),
                height: 140,
                child: Row(
                  children: [
                    Text(
                      'Cart',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _createContainerLeading('image/blueDonuts.png'),
                        Text(
                          'X1',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _createContainerLeading('image/raspDonut.png'),
                        Text(
                          'X1',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 165),
                    Text(
                      '\$22,70',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(bottom: 90),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 470,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.fiber_manual_record,
                              size: 20, color: Colors.pink),
                          Text(
                            'Most popular',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            ),
                          ),
                          Text(
                            'Burgers',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Sandwiches',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Salads',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    _createDescriptionItem('image/honeyDonut.png',
                        'Honey Milk Donut', '\$9,75', 'Blueberry'),
                    SizedBox(height: 40),
                    _createDescriptionItem('image/raspDonut.png',
                        'Raspberry Donut', '\$12,95', 'Raspberry'),
                    SizedBox(height: 40),
                    _createDescriptionItem('image/blueDonuts.png',
                        'Blueberry Donut', '\$12,95', 'Blueberry'),
                    SizedBox(height: 40),
                    _createDescriptionItem('image/sugaredDonut.png',
                        'Sugared Donut  ', '\$12,95', 'Raspberry'),
                  ],
                ),
              ),
            ),

            Positioned(
              top: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 20),
                  ],
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(left: 20, top: 200, bottom: 20),
                padding: EdgeInsets.only(left: 20, top: 20),
                height: 150,
                child: _createTile('image/donuts.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createDescriptionItem(String path, String item, String price, String type) {
    return Row(
      children: [
        _createContainerLeading(path),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  item,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(width: 145),
                Text(
                  price,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
            Text(
              type + ' + sugar + flowour + some',
              style: TextStyle(fontSize: 13, color: Colors.black),
            ),
            Row(
              children: [
                Text(
                  'Ingredients',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
                SizedBox(width: 200),
                Text(
                  'Add to cart',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                ),
              ],
            )
          ],
        ),
      ],
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
            margin: EdgeInsets.only(left: 10, right: 10),
            width: 50,
            height: 50,
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

  Widget _createContainerEnd(String image) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 20),
              ],
            ),
            margin: EdgeInsets.only(left: 20, right: 20),
            width: 100,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image, scale: 2.5),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _createTile(String path) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 140,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New York Donut CO.',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellowAccent),
                          Text(
                            '4,0',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '-  fast-food  - \$\$ - 15-20 min',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.pink.shade50,
                            ),
                            width: 110,
                            height: 20,
                            child: Text(
                              'Free deliver',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          SizedBox(width: 20),
                          Text(
                            '24 review`s',
                            style: TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 50),
                  _createContainerEnd(path),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
