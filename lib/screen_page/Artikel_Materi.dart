import 'package:flutter/material.dart';
import 'package:studytech_apps/screen_page/Bab1Trigonometri.dart';
import 'package:studytech_apps/screen_page/Bab1Trigonometri1.dart';
import 'package:studytech_apps/screen_page/Bab1Trigonometri3.dart';
import 'package:studytech_apps/screen_page/Bab1Trogonometri2.dart';
import 'package:studytech_apps/screen_page/Bab2_Sudut.dart';
import 'package:studytech_apps/screen_page/Bab3_Screen1.dart';
import 'package:studytech_apps/screen_page/Bab3_Screen2.dart';
import 'package:studytech_apps/screen_page/Bab3_Screen3.dart';
import 'package:studytech_apps/screen_page/Bab4_Screen1.dart';
import 'package:studytech_apps/screen_page/Bab4_Screen2.dart';
import 'package:studytech_apps/screen_page/Bab5_Screen1.dart';
import 'package:studytech_apps/screen_page/Bab5_Screen2.dart';
import 'package:studytech_apps/screen_page/pagebab53.dart';
import 'package:studytech_apps/screen_page/pagebab54.dart';
import 'package:studytech_apps/screen_page/pagebab55.dart';
import 'package:studytech_apps/screen_page/pagebab61.dart';
import 'package:studytech_apps/screen_page/pagebab62.dart';
import 'package:studytech_apps/screen_page/pagebab71.dart';
import 'package:studytech_apps/screen_page/pagebab72.dart';
import 'package:studytech_apps/screen_page/pagebab81.dart';
import 'package:studytech_apps/screen_page/pagebab82.dart';
import 'package:studytech_apps/screen_page/pagebab83.dart';

class PageArtikel_Materi extends StatelessWidget {
  const PageArtikel_Materi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 25, 52, 152),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Kembali',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 235, 236, 246),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: HalfCircleClipper(),
              child: Container(
                height: 150,
                color: Color(0xFF193498),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'gambar/gambar17.png', // Replace 'your_image.png' with your image asset path
                          width: 50,
                          height: 50,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Matematika',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Matematika adalah ilmu yang\nmempelajari hal-hal seperti besaran,\nstruktur, ruang dan perubahan',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bab 1 Trigonometri',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageBabTrigonometri(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1.1 Pengukuran Sudut                                                                                                                                       \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageBabTrigonometri1(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1.2 Perbandingan Trigonometri Pada Segitiga Siku – Siku                                                        \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageBabTrigonometri2(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1.3 Nilai Perbandingan Trigonometri untuk Sudut Istimewa                                  \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageBabTrigonometri2(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(8),
                            child: Text(
                              '1.4 Perbandingan Sudut dan Sudut Relasi Trigonometri I dan II                                                   \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageBabTrigonometri3(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1.5 Identitas Trigonometri                                                                                             \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bab 2 Sudut',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageBab2_Sudut(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '2.1 Sudut Siku-Siku                                                                      \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageBab2_Sudut(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '2.2 Sudut Lancip                                                                           \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageBab2_Sudut(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '2.3 Sudut Tumpul                                                                          \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bab 3 Persamaan Linear Satu Variabel',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageBab3_Screen1(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '3.1 Pengertian Persamaan Linear Satu Variabel                                                          \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageBab3_Screen2(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '3.2 Kesetaraan Bentuk PLSV                                                              \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageBab3_Screen3(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '3.3 Penyelesaian Soal PLSV                                                              \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bab 4 Persamaan Kuadrat',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageBab4_Screen1(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '4.1 Menyusun Persamaan Kuadrat Jika Diketahui Akar-akarnya                                                          \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageBab4_Screen2(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '4.2 Menyusun Persamaan Kuadrat Jika Diketahui Jumlah dan Hasil Kali Akar-akarnya                                                              \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bab 5 (SPLDV)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageBab5_Screen1(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '5.1  Pengertian                                                                                                   \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageBab5_Screen2(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '5.2 Metode grafik                                                                                                                 \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pagebab53(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '5.3 Metode eliminasi                                                                                                             \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pagebab54(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '5.4 Metode Subtitusi                                                                                                 \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pagebab55(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '5.5 Metode Gabungan                                                                                  \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bab 6 Aturan Sinus dan Cosinus',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pagebab61(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '6.1 Aturan Sinus                                                                                        \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pagebab62(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '6.2 aturan Cosinus                                                                                                          \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bab 7 Konsep Turunan Fungsi Aljabar',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pagebab71(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '7.1 Konsep Turunan Fungsi                                                                  \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pagebab72(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '7.2 Rumus Turunan Fungsi                                                             \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bab 8 Mengenal Matriks',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pagebab81(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '8.1 Pengertian                                                                                               \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pagebab82(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '8.2 Jenis - jenis                                                                                       \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pagebab83(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey[300],
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '8.3 Transpore                                                                                          \n',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
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
