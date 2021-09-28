import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage5 extends StatefulWidget {
  const HomePage5({Key? key}) : super(key: key);

  @override
  _HomePage5State createState() => _HomePage5State();
}

class _HomePage5State extends State<HomePage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //backgroundColor: Color.fromRGBO(65, 29, 70, 1),
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
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(top: 100, left: 40, right: 40),
                color: Color.fromRGBO(85, 40, 91, 1),
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.fiber_manual_record,
                            size: 15, color: Colors.white),
                        SizedBox(width: 5),
                        Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.search, size: 30, color: Colors.white),
                    Icon(Icons.list_alt, size: 30, color: Colors.white),
                    Icon(Icons.person_outline, size: 30, color: Colors.white),

                  ],
                ),
              ),
            ),

            Container(

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
                            Image.asset('icons/cloche.png', scale: 2), 'All', Colors.pink.shade100),
                        _createColumn(
                            Icon(Icons.lunch_dining, color: Colors.black), 'Burgers', Colors.pink.shade100),
                        _createColumn(
                            Icon(Icons.local_pizza_outlined, color: Colors.black), 'Pizza', Colors.pink.shade100),
                        _createColumn(
                            Image.asset('icons/donut.png', scale: 2), 'Desert', Colors.white),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      color: Colors.white,
                    ),
                    height: 500,
                    //margin: EdgeInsets.only(bottom: 100),

                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          _createTile(
                            'image/krispy.png',
                            'Krispy Kreme',
                            '4,2',
                            Icons.favorite_border,
                          ),
                          _createTile(
                            'image/cupcake.png',
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
                          // _createTile(
                          //   'image/logo_scroll.png',
                          //   'Brindle Room',
                          //   '4,2',
                          //   Icons.favorite_border,
                          // ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget _createColumn(Widget icon, String text, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: color,
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
