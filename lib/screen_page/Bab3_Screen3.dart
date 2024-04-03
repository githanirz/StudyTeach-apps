import 'package:flutter/material.dart';
import 'package:studytech_apps/screen_page/Bab4_Screen1.dart';

class PageBab3_Screen3 extends StatelessWidget {
  const PageBab3_Screen3({Key? key}) : super(key: key);

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
                          'Penyelesaian Soal PLSV',
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
                            'Cara menyelesaikan persamaan linear satu variabel adalah dengan cara substitusi. Metode substitusi adalah mengganti variabel dengan bilangan yang sesuai sehingga persamaan tersebut menjadi kalimat yang benar. '
                            '\n\nContoh :'
                            '\nTentukan himpunan penyelesaian dari persamaan y + 2 = 5, jika nilai y merupakan variabel dan bilangan asli.',
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
                            'Pembahasan :'
                            '\nKita ganti variabel y dengan nilai y = 3 (substitusi), ternyata persamaan y + 2= 5 menjadi kalimat terbuka yang benar. Sehingga himpunan penyelesaiannya dari y + 2 = 5 adalah {3}.'
                            '\n\nAdapun langkah-langkah penyelesaian menggunakan metode substitusi adalah sebagai berikut : '
                            '\n\nKelompokkan suku yang sejenis.'
                            '\nJika suku sejenis di beda ruas, pindahkan agar menjadi satu ruas.'
                            '\nJika pindah ruas maka tanda berubah (positif (+) menjadi negatif (-) dan sebaliknya).'
                            '\nCari variabel hingga = konstanta yang merupakan penyelesaian. ',
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
                            'Contoh : '
                            '\n\nTentukan himpunan penyelesaian persamaan 4x – 3 = 3x + 5. Jika nilai x variabel pada himpunan bilangan bulat.  '
                            '\n\nPembahasan :'
                            '\n4x – 3     = 3x + 5'
                            '\n4x- 3 + 3 = 3x +5 + 3 (kedua ruas ditambah 3)'
                            '\n4x           = 3x + 8 (langkah 1 (kelompokkan suku sejenis))'
                            '\n4x – 3x   = 8'
                            '\nx             = 8 (himpunan penyelesaiannya adalah x = 8)',
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
                        builder: ((context) => PageBab4_Screen1())));
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
