import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.shopping_bag_outlined, color: Colors.black),
            SizedBox(width: 20),
            Icon(Icons.favorite_border, color: Colors.black),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Row(
                children: [
                  Text(
                    'Hi, ',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  Text(
                    'Jack!',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Text(
                    'DELIVER TO  ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '797 CASSIE SPURS',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.purple,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                color: Colors.pink.shade50,
              ),
              margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _createColumn(
                      Image.asset('icons/cloche.png', scale: 2), 'All'),
                  _createColumn(
                      Icon(Icons.lunch_dining, color: Colors.black), 'Burgers'),
                  _createColumn(
                      Icon(Icons.local_pizza_outlined, color: Colors.black),
                      'Pizza'),
                  _createColumn(
                      Image.asset('icons/donut.png', scale: 2), 'Desert'),
                ],
              ),
            ),
            _createTile(
              'image/logo_scroll.png',
              'Brindle Room',
              '4,2',
              Icons.favorite_border,
            ),
            _createTile(
              'image/burgers.png',
              'Cupcake Delivery',
              '3,8',
              Icons.favorite,
            ),
            _createTile(
              'image/donuts.png',
              'New York Donut CO.',
              '4,0',
              Icons.favorite,
            ),
            _createTile(
              'image/mcDonalds.png',
              'MacDonald\'s',
              '3,9',
              Icons.favorite_border,
            ),
          ],
        ),
      ),
    );
  }

  Widget _createColumn(Widget icon, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.white,
          child: icon,
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
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
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 20),
              ],
            ),
            margin: EdgeInsets.only(left: 20, right: 20),
            width: 120,
            height: 120,
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

  Widget _createTile(String path, String text1, String text2, IconData icon) {
    return Container(
      margin: EdgeInsets.only(right: 40),
      height: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Row(
                children: [
                  _createContainerLeading(path),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellowAccent),
                          Text(
                            text2,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '-  fast-food  - \$\$',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.timer, size: 15, color: Colors.black),
                          Text(
                            '15-20 min',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '   2.5 km',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          Icon(icon, color: Colors.red),
        ],
      ),
    );
  }
}
