import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fruit_shop_app/homepage.dart';
import 'package:fruit_shop_app/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_card/image_card.dart';
import 'package:fancy_card/fancy_card.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
var navbar = Color.fromARGB(255, 30, 29, 32);
var bgDraw = Color.fromARGB(255, 30, 29, 32);
var produk = Color.fromARGB(255, 255, 255, 255);
var bgCard = Color.fromARGB(255, 110, 109, 109);
var badgenya = Color.fromARGB(255, 250, 182, 24);

class checkout extends StatefulWidget {
  const checkout({super.key});

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
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
          'Checkout',
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
          children: <Widget>[
            Expanded(
              child: ListView(
                children: [
                  Card(
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image(
                            width: 80,
                            image: AssetImage("assets/buah_durian.jpg"),
                          ),
                          Expanded(
                            flex: 100,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3),
                                    child: Text(
                                      "Buah Durian",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      "Rp. 60.000,-",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4, top: 3),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(right: 4),
                                            child: Icon(
                                              Icons.add_circle,
                                              color: Colors.grey,
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Icon(
                                            Icons.remove_circle,
                                            color: Colors.grey,
                                            size: 24,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 150),
                                            child: Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                              size: 24,
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image(
                            width: 80,
                            image: AssetImage("assets/bua_rambutan.jpg"),
                          ),
                          Expanded(
                            flex: 100,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3),
                                    child: Text(
                                      "Buah Rambutan",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      "Rp. 25.000,-",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4, top: 3),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(right: 4),
                                            child: Icon(
                                              Icons.add_circle,
                                              color: Colors.grey,
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Icon(
                                            Icons.remove_circle,
                                            color: Colors.grey,
                                            size: 24,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 150),
                                            child: Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                              size: 24,
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image(
                            width: 80,
                            image: AssetImage("assets/buah_anggur.webp"),
                          ),
                          Expanded(
                            flex: 100,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3),
                                    child: Text(
                                      "Buah Anggur",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      "Rp. 27.000,-",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4, top: 3),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(right: 4),
                                            child: Icon(
                                              Icons.add_circle,
                                              color: Colors.grey,
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Icon(
                                            Icons.remove_circle,
                                            color: Colors.grey,
                                            size: 24,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 150),
                                            child: Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                              size: 24,
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image(
                            width: 80,
                            image: AssetImage("assets/buah_apel.jpg"),
                          ),
                          Expanded(
                            flex: 100,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3),
                                    child: Text(
                                      "Buah Apel",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      "Rp. 10.000,-",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4, top: 3),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(right: 4),
                                            child: Icon(
                                              Icons.add_circle,
                                              color: Colors.grey,
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Icon(
                                            Icons.remove_circle,
                                            color: Colors.grey,
                                            size: 24,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 150),
                                            child: Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                              size: 24,
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image(
                            width: 80,
                            image: AssetImage("assets/buah_jeruk.jpg"),
                          ),
                          Expanded(
                            flex: 100,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3),
                                    child: Text(
                                      "Buah Jeruk",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      "Rp. 20.000,-",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4, top: 3),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(right: 4),
                                            child: Icon(
                                              Icons.add_circle,
                                              color: Colors.grey,
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Icon(
                                            Icons.remove_circle,
                                            color: Colors.grey,
                                            size: 24,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 150),
                                            child: Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                              size: 24,
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image(
                            width: 80,
                            image: AssetImage("assets/buah_kiwi.jpg"),
                          ),
                          Expanded(
                            flex: 100,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3),
                                    child: Text(
                                      "Buah Kiwi",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      "Rp. 20.000,-",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4, top: 3),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(right: 4),
                                            child: Icon(
                                              Icons.add_circle,
                                              color: Colors.grey,
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Icon(
                                            Icons.remove_circle,
                                            color: Colors.grey,
                                            size: 24,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 150),
                                            child: Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                              size: 24,
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image(
                            width: 80,
                            image: AssetImage("assets/buah_leci.jpg"),
                          ),
                          Expanded(
                            flex: 100,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3),
                                    child: Text(
                                      "Buah Leci",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      "Rp. 15.000,-",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4, top: 3),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(right: 4),
                                            child: Icon(
                                              Icons.add_circle,
                                              color: Colors.grey,
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Icon(
                                            Icons.remove_circle,
                                            color: Colors.grey,
                                            size: 24,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 150),
                                            child: Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                              size: 24,
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image(
                            width: 80,
                            image: AssetImage("assets/buah_mangga.webp"),
                          ),
                          Expanded(
                            flex: 100,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3),
                                    child: Text(
                                      "Buah Mangga",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      "Rp. 30.000,-",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4, top: 3),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(right: 4),
                                            child: Icon(
                                              Icons.add_circle,
                                              color: Colors.grey,
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Icon(
                                            Icons.remove_circle,
                                            color: Colors.grey,
                                            size: 24,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 150),
                                            child: Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                              size: 24,
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image(
                            width: 80,
                            image: AssetImage("assets/buah_naga.jpg"),
                          ),
                          Expanded(
                            flex: 100,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3),
                                    child: Text(
                                      "Buah Naga",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      "Rp. 16.000,-",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4, top: 3),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(right: 4),
                                            child: Icon(
                                              Icons.add_circle,
                                              color: Colors.grey,
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Icon(
                                            Icons.remove_circle,
                                            color: Colors.grey,
                                            size: 24,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 150),
                                            child: Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                              size: 24,
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image(
                            width: 80,
                            image: AssetImage("assets/buah_stroberry.jpg"),
                          ),
                          Expanded(
                            flex: 100,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3),
                                    child: Text(
                                      "Buah Stroberry",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      "Rp. 45.000,-",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4, top: 3),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(right: 4),
                                            child: Icon(
                                              Icons.add_circle,
                                              color: Colors.grey,
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Icon(
                                            Icons.remove_circle,
                                            color: Colors.grey,
                                            size: 24,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 150),
                                            child: Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                              size: 24,
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 25,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 100,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: Text(
                                "Total Checkout",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Rp. 268.000,-",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 120),
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                          backgroundColor: Color(0xffF18265)),
                                      onPressed: () {},
                                      child: Text(
                                        "Checkout Now",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
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
