import 'package:flutter/material.dart';
import 'package:studytech_apps/screen_page/Bab3_Screen2.dart';

class PageBab3_Screen1 extends StatelessWidget {
  const PageBab3_Screen1({Key? key}) : super(key: key);

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
                          'Pengertian Persamaan Linear Satu Variabel',
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
                            'Persamaan linear satu variabel adalah kalimat terbuka yang dihubungkan'
                            'tanda sama dengan (=) dan hanya mempunyai satu variabel berpangkat 1.'
                            'Bentuk umum persamaan linier satu variabel adalah ax + b = 0. Contohnya :'
                            '\n\nx + 3 = 7 '
                            '\n3a + 4 = 1'
                            '\nr2– 6 = 10'
                            '\nUntuk memahami persamaan linear satu variabel, terdapat elemen-elemen yang perlu kita pahami yaitu tentang pernyataan, kalimat terbuka, variabel, dan konstanta. Kalimat terbuka adalah kalimat yang belum dapat diketahui nilai kebenarannya, variabel (peubah) adalah lambang (simbol) pada kalimat terbuka yang dapat diganti oleh sembarang anggota himpunan yang telah ditentukan. Konstanta adalah lambang yang menyatakan suatu bilangan tertentu, dan himpunan penyelesaian adalah himpunan semua pengganti dari variabel-variabel pada kalimat terbuka yang membuka kalimat tersebut menjadi benar. Contohnya : ',
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
                            'x + 13 = 17'
                            '\n7 – y = 12'
                            '\n4z – 1 = 11'
                            '\nPada bagian 1. (x + 13 = 17) disebut kalimat terbuka, nilai x disebut variabel, sedangkan 13 dan 17 disebut dengan konstanta). Himpunan penyelesaiannya adalah x = 4',
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
                            'Pada bagian 2. (7 – y = 12) disebut dengan kalimat terbuka, nilai y disebut dengan variabel, sedangkan 7 dan 12 disebut dengan konstanta. Himpunan penyelesaiannya adalah y = -5'
                            '\n\nPada bagian 3. (4z – 1 = 11) disebut dengan kalimat terbuka, nilai z disebut dengan variabel, sedangkan – 1 dan 11 disebut dengan konstanta. Himpunan penyelesaiannya adalah z = 3. ',
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
                        builder: ((context) => PageBab3_Screen2())));
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
