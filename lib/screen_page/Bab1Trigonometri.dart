import 'package:flutter/material.dart';

class PageBabTrigonometri extends StatelessWidget {
  const PageBabTrigonometri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipPath(
                    clipper: HalfCircleClipper(),
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          color: Color(0xFF193498),
                          child: Center(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Bab 1',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\nTrigonometri',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_back_ios,
                                  color: Colors.white),
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
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'gambar/gambar1.png',
                        fit: BoxFit.fill,
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Pengukuran Sudut',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                          height: 10), // Spasi antara judul dan teks berikutnya
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Berdasarkan gambar di atas dapat kita simpulkan bahwa pengukuran'
                              'sudut merupakan salah satu aspek penting dalam pengukuran dan pemetaan kerangka maupun titik-titik detail. Sistem besaran sudut yang dipakai juga berbeda antara satu dengan yang lainnya. Sistem besaran sudut pada pengukuran dan pemetaan dapat terdiri dari:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          )),
                      SizedBox(
                          height: 10), // Spasi antara judul dan teks berikutnya
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Sistem Besaran Sudut Seksagesimal'
                            '\nSistem Besaran Sudut Sentisimal'
                            '\nSistem Sesaran Sudut Radian'
                            '\nDasar untuk mengukur besaran sudutnya seperti suatu lingkaran yang dibagi'
                            'menjadi empat bagian, yang dinamakan kuadran yaitu Kudran I, II, III dan kuadran IV.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: 10), // Spasi antara judul dan teks berikutnya
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Untuk cara sexagesimal lingkaran dapat dibagi menjadi 360 bagian yang sama dan tiap bagiannya disebut derajat. Maka 1 kuadran dalam lingkaran tersebut = 900.'
                            '\n'
                            '\n1o = 60’ 1’ = 60” 1o = 3600”',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
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
