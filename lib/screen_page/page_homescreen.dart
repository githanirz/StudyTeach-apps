import 'package:flutter/material.dart';
import 'package:studytech_apps/screen_page/page_register.dart';

class PageHomeScreen extends StatefulWidget {
  const PageHomeScreen({Key? key});

  @override
  State<PageHomeScreen> createState() => _PageHomeScreenState();
}

class _PageHomeScreenState extends State<PageHomeScreen> {
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
                  const Color.fromARGB(255, 156, 210, 255)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                Center(
                  child: Image.asset(
                    'assets/gambar/amico.png',
                    width: 250,
                    height: 250,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Selamat Datang \nMember StudyTeach',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Pendidikan adalah paspor untuk masa \ndepan, karena hari esok adalah milik \nmereka yang mempersiapkannya hari ini.',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(350, 50),
                      ),
                    ),
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/google.png',
                      width: 24,
                      height: 24,
                    ),
                    label: Text(
                      'Sign In with Google',
                      style: TextStyle(color: Color(0xFF4285F4)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFF3957ED),
                      ),
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(350, 50),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PageRegister()),
                      );
                    },
                    child: Text(
                      'Create Account',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -12,
            right: 0,
            child: Transform.rotate(
              angle: -0.1,
              child: Image.asset(
                'assets/gambar/roket.png',
                alignment: Alignment.bottomRight,
                width: 300, // Adjust the width of the rocket image
                height: 300, // Adjust the height of the rocket image
              ),
            ),
          ),
        ],
      ),
    );
  }
}
