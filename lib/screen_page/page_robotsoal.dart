import 'package:flutter/material.dart';
import 'package:studytech_apps/screen_page/page_robotsoal1.dart';

class RobotSoal extends StatefulWidget {
  const RobotSoal({Key? key});

  @override
  State<RobotSoal> createState() => _RobotSoalState();
}

class _RobotSoalState extends State<RobotSoal> {
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
            // Add your action here
          },
          icon: Icon(
            Icons.close,
            color: Colors.white, // Set icon color to white
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
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
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white, // Circle color
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RobotSoal1()),
                        );
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
            ),
          ],
        ),
      ),
    );
  }
}
