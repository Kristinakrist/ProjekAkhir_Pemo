import 'package:flutter/material.dart';
import 'package:fruit_shop_app/login.dart';
import 'package:google_fonts/google_fonts.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              Container(
                height: 190,
                width: 190,
                margin: EdgeInsets.only(top: 100),
                child: Image(
                  image: AssetImage("assets/logo.png"),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: TextFormField(
                  // controller: rc.emailCtrl,
                  cursorColor: Colors.orange,
                  maxLines: 1,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    hintText: "Email",
                    prefixIcon: Icon(
                      Icons.people,
                      color: Color.fromARGB(255, 114, 111, 111),
                    ),
                    hintStyle: GoogleFonts.pacifico(
                      fontSize: 16,
                      color: Color.fromARGB(255, 114, 111, 111),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Email tidak boleh kosong' : null,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: TextFormField(
                  // controller: rc.passwordCtrl,
                  cursorColor: Colors.orange,
                  maxLines: 1,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    hintText: "Password",
                    prefixIcon: Icon(Icons.key,
                        color: Color.fromARGB(255, 114, 111, 111)),
                    hintStyle: GoogleFonts.pacifico(
                      fontSize: 16,
                      color: Color.fromARGB(255, 114, 111, 111),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Password tidak boleh kosong' : null,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: TextFormField(
                  // controller: rc.konfirmasiPasswordCtrl,
                  cursorColor: Colors.orange,
                  maxLines: 1,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    hintText: "Confirm Password",
                    prefixIcon: Icon(Icons.key,
                        color: Color.fromARGB(255, 114, 111, 111)),
                    hintStyle: GoogleFonts.pacifico(
                      fontSize: 16,
                      color: Color.fromARGB(255, 114, 111, 111),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Password tidak boleh kosong' : null,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 50, right: 50),
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => login()),
                      );
                      final snackBar = SnackBar(
                        content: Text('Registrasi Anda Berhasil !'),
                        action: SnackBarAction(
                          label: 'OKE',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 90),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Already an Account? ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      child: TextButton(
                          child: Text('Login'),
                          onPressed: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => login()),
                            );
                          })),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
