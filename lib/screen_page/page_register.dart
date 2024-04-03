import 'package:flutter/material.dart';
import 'package:studytech_apps/screen_page/page_homescreen.dart';
import 'package:studytech_apps/screen_page/page_login.dart';
import 'package:studytech_apps/screen_page/page_register_test.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({Key? key}) : super(key: key);

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blueAccent,
                  Color(0xFF3957ED),
                  const Color.fromARGB(255, 156, 210, 255),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            // Mengatur arrow back ke kiri
            child: IconButton(
              icon: Icon(Icons.arrow_circle_left_outlined),
              color: Colors.white,
              iconSize: 40,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageHomeScreen()),
                );
              },
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 2 - 120,
            child: Image.asset(
              'assets/gambar/StudyTeach.png',
              width: 250,
              height: 250,
            ),
          ),
          Positioned(
            top: 140, // Mengatur teks di bawah gambar
            left: 20, // Mengatur teks di kiri
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/icons/ellips1.png",
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 10,
            right: -50,
            child: Image.asset(
              "assets/icons/ellips2.png",
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
              top: 200, // Mengatur posisi container
              left: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          "Create Account",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Color(0xFF3D2C8D),
                          ),
                        ),
                        subtitle: Text(
                          "Hello there, fill in below to create an account",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFA9A297),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person_2_outlined,
                                  size: 20,
                                  color: Color(0xFF3D2C8D),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Full Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(0xFF0F044C),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: AlignmentDirectional.topStart,
                            width: 400,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter your full name",
                                hintStyle: TextStyle(fontSize: 14),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none),
                                filled: true,
                                fillColor: Color(0xFFE9E9E9),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: Color(0xFF3D2C8D),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Phone Number",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(0xFF0F044C),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: AlignmentDirectional.topStart,
                            width: 400,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter your phone number",
                                hintStyle: TextStyle(fontSize: 14),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Color(0xFFE9E9E9),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Color(0xFF3D2C8D),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Email Address",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(0xFF0F044C),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: AlignmentDirectional.topStart,
                            width: 400,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter your email address",
                                hintStyle: TextStyle(fontSize: 14),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Color(0xFFE9E9E9),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.lock_outline_sharp,
                                  size: 20,
                                  color: Color(0xFF3D2C8D),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Password",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(0xFF0F044C),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: AlignmentDirectional.topStart,
                            width: 400,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter your password",
                                hintStyle: TextStyle(fontSize: 14),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Color(0xFFE9E9E9),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10.0),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.visibility_off,
                                    color: Colors.red,
                                  ), // Icon untuk melihat password
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(145, 223, 158, 255),
                            ),
                            fixedSize: MaterialStateProperty.all<Size>(
                              Size(350, 50),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageRegisterTest()),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageLogin()),
                              );
                            },
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "I'm already a member ",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors
                                          .black, // Warna untuk teks sebelum "Sign In"
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Sign In",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue
                                          .shade700, // Warna untuk "Sign In"
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
