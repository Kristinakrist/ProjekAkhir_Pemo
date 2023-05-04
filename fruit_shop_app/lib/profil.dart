import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fruit_shop_app/homepage.dart';
import 'package:fruit_shop_app/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_card/image_card.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
var navbar = Color.fromARGB(255, 30, 29, 32);
var bgDraw = Color.fromARGB(255, 30, 29, 32);
var produk = Color.fromARGB(255, 255, 255, 255);
var bgCard = Color.fromARGB(255, 110, 109, 109);
var badgenya = Color.fromARGB(255, 250, 182, 24);

class profil extends StatefulWidget {
  const profil({super.key});

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  String dropdownValue = list.first;
  List<String> countries = [
    "Buah Lokal",
    "Buah Import",
    "Olahan Buah",
  ];
  bool flutter = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profil',
        ),
        backgroundColor: navbar,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: navbar,
              ),
              child: Image(image: AssetImage("assets/logo.png")),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => homepage()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: const Text('User Profil'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: const Text('Logout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                );
              },
            ),
            SwitchListTile(
              title: flutter
                  ? const Text(
                      'Light Mode',
                    )
                  : const Text(
                      'Dark Mode',
                    ),
              value: flutter,
              activeColor: Color.fromARGB(255, 7, 178, 190),
              inactiveTrackColor: Colors.grey,
              onChanged: (bool value) {
                setState(() {
                  flutter = value;
                  if (flutter == true) {
                    navbar = Color.fromARGB(255, 44, 151, 239);
                    bgDraw = Color.fromARGB(255, 44, 151, 239);
                    produk = Color.fromARGB(255, 48, 48, 48);
                    bgCard = Color.fromARGB(255, 106, 140, 227);
                    badgenya = Color.fromARGB(255, 85, 84, 81);
                  } else {
                    navbar = Color.fromARGB(255, 30, 29, 32);
                    bgDraw = Color.fromARGB(255, 30, 29, 32);
                    produk = Color.fromARGB(255, 255, 255, 255);
                    bgCard = Color.fromARGB(255, 110, 109, 109);
                    badgenya = Color.fromARGB(255, 250, 182, 24);
                  }
                });
              },
              secondary: flutter ? Icon(Icons.sunny) : Icon(Icons.dark_mode),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: navbar,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout),
            label: 'Checkout',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Populer',
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: size.height * 0.40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 36,
                      ),
                      CircleAvatar(
                        radius: 48,
                        backgroundImage: AssetImage("assets/buah.jpeg"),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Nama",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Flutter Developer",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                    ],
                  ),
                ),
                Material(
                  elevation: 1,
                  child: Container(
                    height: 56,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.web,
                          color: Colors.black,
                          size: 28,
                        ),
                        Icon(
                          Icons.image,
                          color: Colors.black,
                          size: 28,
                        ),
                        Icon(
                          Icons.play_circle_outline,
                          color: Colors.black,
                          size: 28,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _tag(String tag, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6), color: badgenya),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Text(
          tag,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
