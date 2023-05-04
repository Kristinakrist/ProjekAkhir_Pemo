import 'package:flutter/material.dart';
import 'package:fruit_shop_app/login.dart';
import 'package:google_fonts/google_fonts.dart';

class landing_page extends StatefulWidget {
  const landing_page({super.key});

  @override
  State<landing_page> createState() => _landing_pageState();
}

class _landing_pageState extends State<landing_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // color: Colors.black26,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Fruit Shop App',
                      style: GoogleFonts.pacifico(
                        color: Colors.white,
                        fontSize: 38,
                      ),
                    ),
                  ),
                  Container(
                    child: Image(
                      width: 200,
                      height: 200,
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 150,
              margin: EdgeInsets.only(top: 30),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) {
                      return const login();
                    }),
                  );
                },
                child: Text(
                  "Get Started",
                  style: GoogleFonts.josefinSans(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
