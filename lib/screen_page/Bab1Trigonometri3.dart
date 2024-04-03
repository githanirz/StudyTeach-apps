import 'package:flutter/material.dart';
import 'package:studytech_apps/screen_page/Bab2_Sudut.dart';

class PageBabTrigonometri3 extends StatelessWidget {
  const PageBabTrigonometri3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 170), // Menggeser konten di atas stack
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Identitas Trigonometri',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.10),
                          child: Text(
                            'Identitas trigonometri adalah kesamaan yang memuat perbandingan trigonometri dari suatu sudut.'
                            'Sebuah identitas trigonometri dapat ditunjukkan kebenarannya dengan tiga cara.'
                            'Cara pertama, dimulai dengan menyederhanakan ruas kiri menggunakan identitas sebelumnya sampai menjadi bentuk yang sama dengan ruas kanan. Cara kedua'
                            'mengubah dan menyederhanakan ruas kanan sampai menjadi bentuk yang sama dengan ruas kiri. Cara ketiga, mengubah baik ruas kiri maupun ruas kanan ke dalam bentuk yang sama.'
                            '\n\nAda beberapa rumus identitas trigonometri yang perlu kamu ketahui seperti:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(height: 20), // Spasi antara teks dan gambar
                        Image.asset(
                          'gambar/gambar7.png',
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 20), // Spasi antara teks dan gambar
                        Image.asset(
                          'gambar/gambar8.png',
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
                  child: Text(
                    'Bab 1 Trigonometri',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 5,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(width: 3),
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
            top: 10,
            right: 5,
            child: IconButton(
              icon: Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => PageBab2_Sudut()),
                  ),
                );
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
