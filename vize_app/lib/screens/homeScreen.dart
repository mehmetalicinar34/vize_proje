// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vize_app/widgets/menuItem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar.jpg'),
                        radius: 25,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Mehmet Ali Çinar"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  MenuItem(
                    title: "Home Screen",
                    icon: Icon(Icons.home),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MenuItem(
                    title: "About Us",
                    icon: Icon(Icons.info),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MenuItem(
                    title: "Book hotel rooms",
                    icon: Icon(Icons.shop_2),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            MenuItem(
              icon: Icon(Icons.logout),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/welcome', (route) => false);
              },
              title: "Logout",
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      body: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    SearchBox(),
                    Row(
                      children: [
                        HotelItem("https://assets-global.website-files.com/5c6d6c45eaa55f57c6367749/65045f093c166fdddb4a94a5_x-65045f0266217.webp", "Consulate Hotel", "€750"),
                        SizedBox(width: 80),
                        HotelItem("https://static01.nyt.com/images/2019/03/24/travel/24trending-shophotels1/24trending-shophotels1-superJumbo.jpg", "Ocean Heaven Hotel", "€550"),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        HotelItem("https://assets-global.website-files.com/5c6d6c45eaa55f57c6367749/65045f093c166fdddb4a94a5_x-65045f0266217.webp", "Stellar Haven", "€750"),
                        SizedBox(width: 60),
                        HotelItem("https://www.usatoday.com/gcdn/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg", "Elysian Escapes", "€1050"),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        HotelItem("https://static01.nyt.com/images/2019/03/24/travel/24trending-shophotels1/24trending-shophotels1-superJumbo.jpg", "Harmony Heights", "€850"),
                        SizedBox(width: 60),
                        HotelItem("https://www.usatoday.com/gcdn/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg", "Twilight Terrace", "€950"),
                      ],
                    ),
                    Row(
                      children: [
                        HotelItem("https://static01.nyt.com/images/2019/03/24/travel/24trending-shophotels1/24trending-shophotels1-superJumbo.jpg", "Harmony Heights", "€850"),
                        SizedBox(width: 60),
                        HotelItem("https://www.usatoday.com/gcdn/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg", "Twilight Terrace", "€950"),
                      ],
                    ),
                    Row(
                      children: [
                        HotelItem("https://static01.nyt.com/images/2019/03/24/travel/24trending-shophotels1/24trending-shophotels1-superJumbo.jpg", "Harmony Heights", "€850"),
                        SizedBox(width: 60),
                        HotelItem("https://static01.nyt.com/images/2019/03/24/travel/24trending-shophotels1/24trending-shophotels1-superJumbo.jpg", "Twilight Terrace", "€650"),
                      ],
                    ),
                    
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget HotelItem(String photo, String name, String price) {
    return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color.fromARGB(66, 158, 158, 158)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            child: Column(
                              children: [
                                Image.network(
                                  photo,
                                  width: 150,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(name),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(price),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
  }

  Widget SearchBox() => Container(
        height: 50,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(37, 158, 158, 158),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 20,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Search your hotel",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.tune,
              size: 20,
              color: Colors.black,
            ),
          ],
        ),
      );
}
