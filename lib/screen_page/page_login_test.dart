import 'package:flutter/material.dart';
import 'package:studytech_apps/main.dart';
import 'package:studytech_apps/screen_page/page_register.dart';

class PageLoginTest extends StatefulWidget {
  const PageLoginTest({super.key});

  @override
  State<PageLoginTest> createState() => _PageLoginTestState();
}

class _PageLoginTestState extends State<PageLoginTest> {
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
                  MaterialPageRoute(builder: (context) => PageRegister()),
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
              'Sign In',
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
                height: 400,
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
                          "Welcome Back",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Color(0xFF3D2C8D),
                          ),
                        ),
                        subtitle: Text(
                          "Hello there, sign in continue",
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
                                  Icons.email,
                                  size: 20,
                                  color: Color(0xFF3D2C8D),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Username or Email",
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
                                hintText: "ilpengding@gmail.com",
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
                                    Icons.check_circle_outlined,
                                    color: Colors.blue.shade700,
                                  ), // Icon untuk melihat password
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
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
                                hintText: "......................",
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
                                    Icons.check_circle_outlined,
                                    color: Colors.blue.shade700,
                                  ), // Icon untuk melihat password
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Forgot Password? ",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF241957)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Navigation(), // Memanggil BottomNavigationBar
                              ),
                            );
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageRegister()),
                              );
                            },
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Don't have an account? ",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors
                                          .black, // Warna untuk teks sebelum "Sign In"
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Sign Up",
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
              )),
          Positioned(
            bottom: -8,
            right: 0,
            child: Transform.rotate(
              angle: -0.1,
              child: Image.asset(
                'assets/gambar/signin.png',
                alignment: Alignment.bottomRight,
                width: 200, // Adjust the width of the rocket image
                height: 200, // Adjust the height of the rocket image
              ),
            ),
          ),
        ],
      ),
    );
  }
}
