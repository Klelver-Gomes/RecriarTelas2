import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,right: 30, left: 30, bottom: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios_rounded,
                          color: Colors.black, size: 16),
                      Text(
                        ' Back',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  //SizedBox(width: 50),
                  Row(
                    children: [
                      Icon(Icons.shopping_bag_outlined,
                          color: Colors.black),
                      SizedBox(width: 20),
                      Icon(Icons.favorite_border, color: Colors.black),
                    ],
                  ),
                ],
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50, right: 90),
                  child: Image(
                    image: AssetImage('image/pinkDonut.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Weight',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '400g',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Calories',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '567 ccal',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Peope',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '1 person',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Raspberry Donut',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '\$12,95',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.pink,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Naturally & Artificially Flavered',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Does not contain real Raspberry',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Sed ut perspiciatis unde amnis iste natus error sit\nvoluptatem accusantium doloremque laudantium',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 150, left: 30, right: 30),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                    ),

                    width: 60,
                    height: 60,
                    child: Icon(Icons.favorite_border, color: Colors.red),
                  ),
                  SizedBox(width: 30),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    width: 330,
                    height: 60,
                    child: Text(
                      'ADD TO CART',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
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
}
