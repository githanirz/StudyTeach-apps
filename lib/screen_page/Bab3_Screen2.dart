import 'package:flutter/material.dart';
import 'package:studytech_apps/screen_page/Bab3_Screen3.dart';

class PageBab3_Screen2 extends StatelessWidget {
  const PageBab3_Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 180), // Menggeser konten di atas stack
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Kesetaraan Bentuk PLSV',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                            height:
                                10), // Spasi antara judul dan teks berikutnya
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Dua persamaan atau lebih dikatakan setara (Equivalen) jika mempunyai himpunan penyelesaian yang sama dan dinotasikan dengan simbol “ ↔ “. Syarat suatu persamaan dapat dinyatakan ke dalam suatu persamaan yang setara adalah dengan cara : '
                            '\n\nMenambah atau mengurangi kedua ruas dengan bilangan yang sama.'
                            '\nMengalikan atau membagi kedua ruas dengan bilangan yang sama.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                10), // Spasi antara judul dan teks berikutnya
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Contoh soal :'
                            '\n\n1. Tentukan nilai x – 3 = 5'
                            '\n\nPenyelesaian :'
                            '\n Jika x diganti 8 maka nilai 8-3 = 5  {benar} (syarat ke-1) Jadi penyelesaian persamaan x-3 = 5 adalah  x = 8',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                10), // Spasi antara judul dan teks berikutnya
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '2. Tentukan nilai 2x – 6 = 10'
                            '\n\nPenyelesaian : '
                            '\n2x-6 = 10  → 2x = 16 (syarat ke-1)'
                            '\nNilai x diganti dengan 8 agar kedua persamaan setara'
                            '\n2(8)  = 16 → 16 = 16 .'
                            '\nJadi penyelesaian persamaan 2x – 6 = 10 adalah x = 8'
                            '\n\n3. Tentukan nilai x + 4  = 12'
                            '\n\nPenyelesaian : '
                            '\nx + 4 = 12 → x = 12-4 { syarat ke-1}'
                            '\nMaka nilai x = 8'
                            '\nJadi penyelesaiannya adalah x = 8 ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: HalfCircleClipper(),
              child: Container(
                height: 200,
                color: Color(0xFF193498),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Bab 3 ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '\nPersamaan Linear Satu \nVariabel',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            left: 5,
            child: Row(
              children: [
                IconButton(
                  iconSize: 20,
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(
                    width:
                        1), // Menambahkan jarak horizontal antara ikon dan teks
                Text(
                  'Kembali',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: IconButton(
              iconSize: 20,
              icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => PageBab3_Screen3())));
                // Tambahkan logika navigasi ke halaman berikutnya di sini
              },
            ),
          ),
        ],
      ),
    );
  }
}

class HalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 2);
    path.arcToPoint(
      Offset(size.width, size.height / 2),
      radius: Radius.circular(size.width),
      clockwise: false,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
