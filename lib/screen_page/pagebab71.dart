import 'package:flutter/material.dart';

class Pagebab71 extends StatefulWidget {
  const Pagebab71({Key? key}) : super(key: key);

  @override
  State<Pagebab71> createState() => _Pagebab71state();
}

class _Pagebab71state extends State<Pagebab71> {
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
                          'Rumus Turunan Fungsi Aljabar',
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
                            'Coba kamu perhatikan grafik fungsi di bawah ini.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(height: 20), // Spasi antara teks dan gambar
                        Image.asset(
                          'assets/gambar/p71_1.png',
                          width: 250,
                          height: 180,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                            height:
                                10), // Spasi antara judul dan teks berikutnya
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '''Misalkan, grafik di atas merupakan grafik fungsi kontinu f(x). Lalu, terdapat garis lurus yang memotong kurva f(x) di dua titik, yaitu titik A dan B. Nah, karena memotong kurva di dua titik, garis lurus ini bisa kita sebut sebagai garis secan atau garis AB. 

Kalo kita lihat pada gambar, garis AB pasti punya kemiringan (gradien) tertentu, nih. Kamu masih ingat kan, cara mencari gradien garis lurus? Gradien garis lurus bisa kita cari menggunakan rumus berikut ini:''',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(height: 20), // Spasi antara teks dan gambar
                        Image.asset(
                          'assets/gambar/p71_3.png',
                          width: 120,
                          height: 80,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                            height:
                                10), // Spasi antara judul dan teks berikutnya
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '''Nah, karena titik absis (koordinat x) dan ordinatnya (koordinat y) sudah diketahui, bisa kita masukkan deh ke dalam rumus. Sehingga, diperoleh gradien garis AB nya seperti ini.''',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(height: 20), // Spasi antara teks dan gambar
                        Image.asset(
                          'assets/gambar/p71_5.png',
                          width: 120,
                          height: 80,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                            height:
                                10), // Spasi antara judul dan teks berikutnya
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '''Sekarang, kalo misalnya titik A dan B ini kita geser agar saling berdekatan satu sama lain, hingga jarak antar titiknya (h) mendekati nol, kira-kira apa yang bakal terjadi?''',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/gambar/p71_2.png',
                          width: 120,
                          height: 80,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                            height:
                                10), // Spasi antara judul dan teks berikutnya
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '''Salah, mereka nggak jadian. :(

Garis AB yang awalnya memotong kurva di dua titik, lama-kelamaan berubah menjadi garis yang tampak menyinggung kurva di satu titik aja. Garis singgung ini kemudian bisa kita sebut sebagai garis tangen. 

Untuk gradien garisnya, tetap sama, guys. Tapi, karena nilai h nya mendekati nol, jadi kita gunakan konsep limit.''',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/gambar/p71_4.png',
                          width: 120,
                          height: 80,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                            height:
                                10), // Spasi antara judul dan teks berikutnya
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '''Dengan syarat, nilai limitnya ada, ya. Nah, gradien garis singgung inilah yang disebut turunan fungsi.''',
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
                          text: 'Bab 7 ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'Konsep Turunan Fungsi Aljabar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
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
