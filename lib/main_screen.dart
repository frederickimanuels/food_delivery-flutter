import 'package:flutter/material.dart';
import 'package:food_delivery/model/food_menu.dart';

class MainScreen extends StatefulWidget {
  final String username;

  MainScreen({Key key, @required this.username});

  @override
  _MainScreenState createState() => _MainScreenState(username);
}

class _MainScreenState extends State<MainScreen> {
  String username;
  _MainScreenState(this.username);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.only(top: 15),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: 5,
                          height: 40,
                          child: RaisedButton(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: IconTheme(
                              data: IconThemeData(color: Color(0xffF4B33C)),
                              child: Icon(
                                Icons.chevron_left,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Hello $username',
                          style: TextStyle(
                              fontFamily: 'Cabin',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, bottom: 15),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Food',
                              style: TextStyle(
                                  fontFamily: 'Cabin',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Delivery',
                              style: TextStyle(
                                  fontFamily: 'Cabin',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: sliderImageList.map((url) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                url,
                                width: 250,
                                height: 150,
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: ListView(
                          children: foodMenuList.map((food) {
                            return Row(
                              children: <Widget>[
                                ClipRRect(
                                  child: Image.network(
                                    food.imgUrl,
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(food.name),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(food.desc),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text('${food.price}'),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffF4B33C),
        tooltip: 'Increment',
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

var sliderImageList = {
  'https://1.bp.blogspot.com/-oA8ie1jsIQQ/Xzf9hZs90MI/AAAAAAAB1Ao/pxLqE2ZV8bQNNuSYhHtOhNvOZUE_VOiqACLcBGAsYHQ/s1600/gurame-asam-manis-50400059.jpg',
  'https://grosirmesin.com/wp-content/uploads/2019/03/Cara-Membuat-Batagor-1030x567.jpg',
};

var foodMenuList = [
  FoodMenu(
    name: 'Satay',
    desc: 'Chicken Satay',
    price: 50,
    imgUrl: 'https://kbu-cdn.com/dk/wp-content/uploads/sate-ayam.jpg',
  ),
];
