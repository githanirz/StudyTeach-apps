import 'package:flutter/material.dart';
import 'package:studytech_apps/screen_page/Bab4_Screen2.dart';

class PageBab4_Screen1 extends StatelessWidget {
  const PageBab4_Screen1({Key? key}) : super(key: key);

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
                          'Menyusun Persamaan Kuadrat Jika Diketahui Akar-akarnya',
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
                            'Misalnya, diketahui akar-akar persamaan kuadrat adalah x1 dan x2. Untuk mendapatkan persamaan kuadratnya, kamu bisa substitusi akar-akar tersebut ke persamaan berikut: rumus menyusun persamaan kuadrat'
                            '\n\nSalah satu caranya adalah dengan memfaktorkan persamaan kuadrat tersebut. Nah, bentuk persamaan (x - x1)(x - x2) = 0 adalah hasil dari pemfaktoran persamaan kuadrat. Kalau kita lakukan sedikit operasi aljabar, kita kali silang persamaan itu, maka akan didapat suatu persamaan kuadrat.'
                            '\n\nSupaya lebih paham, perhatikan contoh soal di bawah ini, yuk!'
                            '\n\nContoh soal 1'
                            '\nTentukan persamaan kuadrat yang akar-akarnya adalah 3 dan -7.'
                            '\n\nPenyelesaian:'
                            '\nDiketahui akar-akar persamaan kuadrat adalah 3 dan -7. Berarti, kamu bisa tulis x1 = 3 dan x2 = -7. Kemudian, kedua akar tersebut bisa kamu substitusikan ke persamaan (x - x1)(x - x2) = 0, sehingga penyelesaiannya menjadi sebagai berikut:'
                            '\n\n(x - 3)(x - (-7)) = 0'
                            '\n(x - 3)(x + 7) = 0'
                            '\nx2 + 7x - 3x - 21 = 0'
                            '\nx2 + 4x - 21 = 0'
                            '\nJadiii, persamaan kuadrat yang akar-akarnya 3 dan -7 adalah x2 + 4x - 21 = 0.',
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
                          text: 'Bab 4 ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '\nPersamaan Kuadrat',
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
                        builder: ((context) => PageBab4_Screen2())));
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
