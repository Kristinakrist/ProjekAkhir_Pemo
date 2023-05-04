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

class favorit extends StatefulWidget {
  const favorit({super.key});

  @override
  State<favorit> createState() => _favoritState();
}

class _favoritState extends State<favorit> {
  String dropdownValue = list.first;
  List<String> countries = [
    "Buah Lokal",
    "Buah Import",
    "Olahan Buah",
  ];
  bool flutter = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Favorit',
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
            Expanded(
              child: GridView.count(
                physics: ScrollPhysics(),
                primary: false,
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                crossAxisCount: 2,
                children: <Widget>[
                  FillImageCard(
                    color: bgCard,
                    width: 300,
                    heightImage: 80,
                    imageProvider: AssetImage('assets/buah_durian.jpg'),
                    tags: [_tag('Hot Fruits', () {})],
                    title: Text(
                      "Durian",
                      style: GoogleFonts.pacifico(color: produk, fontSize: 20),
                    ),
                    description: Text(
                      "Rp. 60.000",
                      style: TextStyle(
                        color: produk,
                      ),
                    ),
                  ),
                  FillImageCard(
                    color: bgCard,
                    width: 300,
                    heightImage: 80,
                    imageProvider: AssetImage('assets/buah_leci.jpg'),
                    tags: [_tag('Hot Fruits', () {})],
                    title: Text(
                      "Leci",
                      style: GoogleFonts.pacifico(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                    ),
                    description: Text(
                      "Rp. 15.000",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  FillImageCard(
                    color: bgCard,
                    width: 300,
                    heightImage: 80,
                    imageProvider: AssetImage('assets/buah_jeruk.jpg'),
                    tags: [_tag('Hot Fruits', () {})],
                    title: Text(
                      "Jeruk",
                      style: GoogleFonts.pacifico(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                    ),
                    description: Text(
                      "Rp. 20.000",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  FillImageCard(
                    color: bgCard,
                    width: 300,
                    heightImage: 80,
                    imageProvider: AssetImage('assets/buah_kiwi.jpg'),
                    tags: [_tag('Hot Fruits', () {})],
                    title: Text(
                      "Kiwi",
                      style: GoogleFonts.pacifico(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                    ),
                    description: Text(
                      "Rp. 20.000",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  FillImageCard(
                    color: bgCard,
                    width: 300,
                    heightImage: 80,
                    imageProvider: AssetImage('assets/bua_rambutan.jpg'),
                    tags: [_tag('Hot Fruits', () {})],
                    title: Text(
                      "Rambutan",
                      style: GoogleFonts.pacifico(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                    ),
                    description: Text(
                      "Rp. 25.000",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  FillImageCard(
                    color: bgCard,
                    width: 300,
                    heightImage: 80,
                    imageProvider: AssetImage('assets/buah_mangga.webp'),
                    tags: [_tag('Hot Fruits', () {})],
                    title: Text(
                      "Mangga",
                      style: GoogleFonts.pacifico(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                    ),
                    description: Text(
                      "Rp. 30.000",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  FillImageCard(
                    color: bgCard,
                    width: 300,
                    heightImage: 80,
                    imageProvider: AssetImage('assets/buah_stroberry.jpg'),
                    tags: [_tag('Hot Fruits', () {})],
                    title: Text(
                      "Stroberry",
                      style: GoogleFonts.pacifico(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                    ),
                    description: Text(
                      "Rp. 45.000",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  FillImageCard(
                    color: bgCard,
                    width: 300,
                    heightImage: 80,
                    imageProvider: AssetImage('assets/buah_naga.jpg'),
                    tags: [_tag('Hot Fruits', () {})],
                    title: Text(
                      "Naga",
                      style: GoogleFonts.pacifico(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                    ),
                    description: Text(
                      "Rp. 16.000",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  FillImageCard(
                    color: bgCard,
                    width: 300,
                    heightImage: 80,
                    imageProvider: AssetImage('assets/buah_apel.jpg'),
                    tags: [_tag('Hot Products!', () {})],
                    title: Text(
                      "Apel",
                      style: GoogleFonts.pacifico(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                    ),
                    description: Text(
                      "Rp. 10.000",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  FillImageCard(
                    color: bgCard,
                    width: 300,
                    heightImage: 80,
                    imageProvider: AssetImage('assets/buah_anggur.webp'),
                    tags: [_tag('Hot Fruits', () {})],
                    title: Text(
                      "Anggur",
                      style: GoogleFonts.pacifico(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                    ),
                    description: Text(
                      "Rp. 27.000",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
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

  Widget _tag(String tag, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6), color: Colors.red),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Text(
          tag,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
