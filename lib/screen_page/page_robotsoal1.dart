import 'package:flutter/material.dart';
import 'package:studytech_apps/screen_page/page_robotsoal.dart';
import 'package:studytech_apps/screen_page/page_soalterdeteksi.dart';

class RobotSoal1 extends StatefulWidget {
  const RobotSoal1({super.key});

  @override
  State<RobotSoal1> createState() => _RobotSoal1State();
}

class _RobotSoal1State extends State<RobotSoal1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.blue.shade100, // Background color set to blueAccent
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent app bar
        elevation: 0, // No shadow
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => RobotSoal()),
            );
          },
          icon: Icon(
            Icons.close,
            color: Colors.white, // Set icon color to white
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => PageSoalTerdeteksi()),
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/gambar/soal1.png', // Add your image path here
                      width: 500, // Adjust image width as needed
                      height: 500,
                      fit: BoxFit.contain,
                      // Adjust image height as needed
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white, // Circle color
                          ),
                          child: IconButton(
                            onPressed: () {
                              // Add your action here
                            },
                            icon: Icon(
                              Icons.picture_in_picture,
                              color: Colors.black,
                              size: 30, // Icon color
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white, // Circle color
                          ),
                          child: IconButton(
                            onPressed: () {
                              // Add your action here
                            },
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.black,
                              size: 30, // Icon color
                            ),
                          ),
                        ),
                      ],
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
