import 'package:flutter/material.dart';
import 'package:studytech_apps/main.dart';

class PageSoalTerdeteksi extends StatefulWidget {
  const PageSoalTerdeteksi({Key? key}) : super(key: key);

  @override
  _PageSoalTerdeteksiState createState() => _PageSoalTerdeteksiState();
}

class _PageSoalTerdeteksiState extends State<PageSoalTerdeteksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                color: Color(0xFF5775BA),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(800),
                  bottomRight: Radius.circular(800),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Navigation(
                                        initialIndex: 3,
                                      )),
                            );
                          },
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Soal Terdeteksi',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 40,
              top: 200,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Soal Terdeteksi:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Nilai dari sin 75° + cos 75° adalah ....',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text('a. 1/4 √6'),
                          Text('b. 1/2 √2'),
                          Text('c. 1/2 √3'),
                          Text('d. 1'),
                          Text('e. 1/2 √6'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Pembahasan:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Menggunakan sifat trigonometri:',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text('sin 75 + cos 75'),
                  SizedBox(height: 10),
                  Text(
                    'Melalui pengubahan fungsi:',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text('= sin 75 + sin(90 - 75)'),
                  Text('= sin 75 + sin 15'),
                  SizedBox(height: 10),
                  Text(
                    'Melalui rumus penjumlahan antar fungsi:',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text('Dengan sin A + sin B = 2. sin (A+B)/2. cos (A-B)/2'),
                  Text('= 2. sin (75+15)/2. cos (75-15)/2'),
                  Text('= 2. sin 90/2. cos 60/2'),
                  Text('= 2. sin 45. cos 30'),
                  Text('= 2. 1/2 √2. 1/2 √3'),
                  Text('= √2. 1/2 √3'),
                  Text('= 1/2 √6'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
