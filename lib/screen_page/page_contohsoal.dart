import 'package:flutter/material.dart';
import 'package:studytech_apps/screen_page/page_detail_homepage.dart';

class ContohSoal extends StatefulWidget {
  const ContohSoal({Key? key});

  @override
  State<ContohSoal> createState() => _ContohSoalState();
}

class _ContohSoalState extends State<ContohSoal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                                  builder: (context) => DetailHomePage()),
                            );
                          },
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Kembali',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120, right: 50),
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/math.png', // Path untuk gambar di sebelah kiri
                              height: 50, // Sesuaikan dengan kebutuhan
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Contoh Soal',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              'assets/icons/math.png', // Path untuk gambar di sebelah kanan
                              height: 50, // Sesuaikan dengan kebutuhan
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          'Ayo latihan dengan contoh \nsoal yang di bawah ini.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 200,
              right: 20,
              left: 20,
              bottom: 10,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1. Ubahlah sudut-sudut berikut ini kedalam suatu radian!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('(a) 30° = 30∘180∘πrad=16πrad'),
                  Text('(b) 120° = 120∘180∘πrad=23πrad'),
                  Text('(c) 225° = 225∘180∘πrad=54πrad'),
                  SizedBox(height: 20),
                  Text(
                    'Jawaban',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('(a) 30° = 30∘ × π180∘ = π6 rad'),
                  Text('(b) 120° = 120∘ × π180∘ = 2π3 rad'),
                  Text('(c) 225° = 225∘ × π180∘ = 5π4 rad'),
                  SizedBox(height: 20),
                  Text(
                    '2. Tentukanlah nilai dari sin 120°',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('(a) sin 120° = sin (90° + 30°)'),
                  Text('      = cos 30°'),
                  Text('      = √3/2'),
                  SizedBox(height: 20),
                  Text(
                    '3. Diketahui segitiga ABC siku-siku di B, dimana AB = 12 cm dan AC = 4 cm. Tentukanlah nilai Cos a?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('BC = √(AC^2 - AB^2) = √(4^2 - 12^2) = 2 cm'),
                  Text('cos a = AB/AC = 12/√(4^2 - 12^2) = 3/√2'),
                  SizedBox(height: 20),
                  Text(
                    '4. Diketahui segitiga ABC siku-siku di B dan besar sudut C adalah 60°. Jika panjang AC = 12 cm, maka tentukanlah panjang:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('(a) sin 60° = AB/AC'),
                  Text('    √3/2 = AB/12'),
                  Text('    AB = 12√3'),
                  Text('(b) cos 60° = BC/AC'),
                  Text('    1/2 = BC/12'),
                  Text('    BC = 6'),
                  SizedBox(height: 20),
                  Text(
                    '5. Seseorang melihat puncak menara dari suatu tempat dengan sudut elevasi 60°. Jika diketahui tinggi menara adalah 90 m maka tentukanlah jarak orang tersebut ke kaki menara (tinggi orang diabaikan)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Jarak orang ke menara = AB'),
                  Text('tan 60° = BC/AB'),
                  Text('√3 = 90/AB'),
                  Text('AB = 90/√3 = 30√3'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
