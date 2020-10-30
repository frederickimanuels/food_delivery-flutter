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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              SafeArea(
                child: Container(
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
                    ],
                  ),
                ),
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
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: foodMenuList.map((food) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            food.imgUrl,
                            width: 90,
                            height: 90,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  food.name,
                                  style: TextStyle(
                                      fontFamily: 'Cabin',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  food.desc,
                                  style: TextStyle(
                                      fontFamily: 'Cabin',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '\$ ${food.price}',
                                  style: TextStyle(
                                      fontFamily: 'Cabin',
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
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
    desc: 'Chicken satay',
    price: 2.5,
    imgUrl: 'https://kbu-cdn.com/dk/wp-content/uploads/sate-ayam.jpg',
  ),
  FoodMenu(
    name: 'Batagor',
    desc: 'Fried dumplings with peanut sauce',
    price: 3,
    imgUrl:
        'https://dikemas.com/uploads/2019/05/resep-batagor-enak-yang-bisa-kamu-jadikan-ladang-bisnis.jpg',
  ),
  FoodMenu(
    name: 'Honey Roasted Gurami',
    desc: 'Roasted gurami fish coated with honey',
    price: 6,
    imgUrl:
        'https://1.bp.blogspot.com/-KzhGQHd89SA/UvbhNkQR_zI/AAAAAAAAAXE/NNeaVS_zNXE/s1600/ikan-gurame-bakar.jpg',
  ),
  FoodMenu(
    name: 'Mixed Tofu',
    desc: 'Tofu noodles with vegetables and other ingredients',
    price: 3.5,
    imgUrl:
        'https://awsimages.detik.net.id/community/media/visual/2019/09/10/9e9e566c-25f7-4478-af19-89f1ace56e73_169.jpeg?w=700&q=90',
  ),
  FoodMenu(
    name: 'Gado - Gado',
    desc: 'Mixed vegetables with peanut sauce',
    price: 2.5,
    imgUrl:
        'https://i0.wp.com/resepkoki.id/wp-content/uploads/2017/02/Resep-Gado-Gado.jpg?fit=2461%2C2359&ssl=1',
  ),
  FoodMenu(
    name: 'Bakso',
    desc: 'Meatballs',
    price: 4,
    imgUrl:
        'https://cdn.idntimes.com/content-images/community/2019/06/duren-sawit-kuliner-6-bakso-dan-mie-ayam-favorioriginal-c44a0544fb0c5cc279fb6df2aaa66566_600x400.jpg',
  ),
];
