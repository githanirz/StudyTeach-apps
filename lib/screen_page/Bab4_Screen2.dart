import 'package:flutter/material.dart';
import 'package:studytech_apps/screen_page/Bab5_Screen1.dart';

class PageBab4_Screen2 extends StatelessWidget {
  const PageBab4_Screen2({Key? key}) : super(key: key);

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
                          'Menyusun Persamaan Kuadrat Jika Diketahui Jumlah dan Hasil Kali Akar-akarnya',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                            height:
                                10), // Spasi antara judul dan teks berikutnya
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Misalkan, akar-akar suatu persamaan kuadrat adalah x1 dan x2. Jika yang diketahui pada soal adalah jumlah dan hasil kali akar-akarnya, maka untuk mendapatkan persamaan kuadratnya, kamu bisa gunakan rumus berikut ini:'
                            '\nNah, sebenarnya, bentuk persamaan x2 - (x1 + x2)x + (x1 . x2) = 0 merupakan hasil kali silang dari persamaan (x - x1)(x - x2) = 0, yang kita gunakan untuk mencari persamaan kuadrat di metode sebelumnya. Penjabarannya, bisa kamu lihat pada gambar di bawah ini, nih.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(height: 20), // Spasi antara teks dan gambar
                        Image.asset(
                          'gambar/gambar13.png',
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                            height:
                                10), // Spasi antara judul dan teks berikutnya
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Terus, kenapa sih bisa dapat x1 + x2= -b/a dan x1 . x2 = c/a? Berawal dari persamaan x2 - (x1 + x2)x + (x1 . x2) = 0, kemudian masing-masing ruas dikalikan dengan konstanta a, sehingga persamaan tersebut menjadi sebagai berikut:'
                            '\n\nax2 - a(x1 + x2)x + a(x1 . x2) = 0'
                            '\nSetelah itu, disamain deh dengan bentuk umum persamaan kuadrat, sehingga diperoleh:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(height: 20), // Spasi antara teks dan gambar
                        Image.asset(
                          'gambar/gambar14.png',
                          fit: BoxFit.fill,
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
                        builder: ((context) => PageBab5_Screen1())));
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
