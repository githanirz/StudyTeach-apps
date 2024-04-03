import 'package:flutter/material.dart';

class Pagebab62 extends StatefulWidget {
  const Pagebab62({Key? key}) : super(key: key);

  @override
  State<Pagebab62> createState() => _Pagebab62state();
}

class _Pagebab62state extends State<Pagebab62> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 130), // Menggeser konten di atas stack
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Aturan Sinus',
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
                            'Aturan Cosinus merupakan aturan yang menjelaskan hubungan antara kuadrat panjang sisi dengan nilai cosinus dari salah satu sudut pada segitiga. Aturan cosinus dapat digunakan untuk menentukan unsur-unsur lain dalam suatu segitiga sembarang untuk dua kasus yaitu saat tiga sisi ketahui dan saat dua sisi dan sudut apitnya diketahui. Seperti yang dijelaskan pada gambar di bawah ini. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),

                        Center(
                          child: Image.asset(
                            'assets/gambar/p62.png',
                            width: 200,
                            height: 180,
                            fit: BoxFit.fill,
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
                          text: 'Bab 6 ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'SPLDV',
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
                SizedBox(height: 1100),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Keterangan:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'a = panjang sisi a',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'A = besar sudut di hadapan sisi a',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'b = panjang sisi b',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'B = besar sudut di hadapan sisi b',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'c = panjang sisi c',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'C = besar sudut di hadapan sisi c',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
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
