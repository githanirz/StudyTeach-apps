import 'package:flutter/material.dart';
import 'package:studytech_apps/main.dart';
import 'package:studytech_apps/screen_page/page_contohsoal.dart';

class DetailHomePage extends StatefulWidget {
  const DetailHomePage({Key? key});

  @override
  State<DetailHomePage> createState() => _DetailHomePageState();
}

class _DetailHomePageState extends State<DetailHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left Icon
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Navigation(
                                initialIndex: 0,
                              )),
                    );
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                // Center Text
                Text(
                  'Detail',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Right Icon
                IconButton(
                  onPressed: () {
                    // Aksi ketika tombol ditekan
                  },
                  icon: Icon(Icons.density_medium_outlined),
                ),
              ],
            ),
          ),
          // Bagian Konten
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      width: 430,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF3957ED),
                            Color.fromARGB(255, 112, 181, 238)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/gambar/g2.png',
                              width: 280, // Sesuaikan lebar gambar
                              height: 210, // Sesuaikan tinggi gambar
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "Kursus online \ndalam matematika",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "Tim kami sebagian mengambil tugas \ntmatematika",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '1581',
                          style:
                              TextStyle(fontSize: 14, color: Colors.blueAccent),
                        ),
                        SizedBox(width: 16),
                        Icon(Icons.light_outlined),
                        SizedBox(width: 8),
                        Text(
                          '1k+',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 50,
                      right: 50,
                    ),
                    child: Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            // Gunakan Navigator untuk berpindah halaman
                            context,
                            MaterialPageRoute(
                              builder: (context) => ContohSoal(),
                            ),
                          );
                        },
                        child: Container(
                          width: 500,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white, // Warna latar belakang card
                          ),
                          child: Row(
                            children: [
                              // Icon dengan background di sebelah kiri
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.5), // Warna bayangan
                                      spreadRadius:
                                          5, // Radius penyebaran bayangan
                                      blurRadius: 7, // Radius blur bayangan
                                      offset: Offset(0,
                                          3), // Posisi bayangan (horizontal, vertical)
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.book_outlined,
                                  color: Colors.blueAccent,
                                  size: 30,
                                ),
                              ),

                              SizedBox(width: 16), // Jarak antara icon dan teks
                              // Teks title di sebelah kanan icon
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '5 Contoh Soal',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    'Contoh soal yaitu 5 yang sesuai permintaan',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 50,
                      right: 50,
                    ),
                    child: Container(
                      child: InkWell(
                        onTap: () {
                          // Aksi ketika card diklik, misalnya navigasi ke halaman lain
                        },
                        child: Container(
                          width: 500,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white, // Warna latar belakang card
                          ),
                          child: Row(
                            children: [
                              // Icon dengan background di sebelah kiri
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.5), // Warna bayangan
                                      spreadRadius:
                                          5, // Radius penyebaran bayangan
                                      blurRadius: 7, // Radius blur bayangan
                                      offset: Offset(0,
                                          3), // Posisi bayangan (horizontal, vertical)
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.card_giftcard_outlined,
                                  color: Colors.blueAccent,
                                  size: 30,
                                ),
                              ),

                              SizedBox(width: 16), // Jarak antara icon dan teks
                              // Teks title di sebelah kanan icon
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '8 Artikel',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'total 8 artikel yang mudah dipahami ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 50,
                      right: 30,
                      bottom: 40,
                    ),
                    child: Container(
                      child: InkWell(
                        onTap: () {
                          // Aksi ketika card diklik, misalnya navigasi ke halaman lain
                        },
                        child: Container(
                          width: 500,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.1), // Warna bayangan
                                spreadRadius: 5, // Radius penyebaran bayangan
                                blurRadius: 7, // Radius blur bayangan
                                offset: Offset(0,
                                    3), // Posisi bayangan (horizontal, vertical)
                              ),
                            ], // Warna latar belakang card
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Icon dengan background di sebelah kiri
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 239, 154, 191),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  "assets/gambar/Avatar2.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),

                              SizedBox(width: 16), // Jarak antara icon dan teks
                              // Teks title di sebelah kanan icon
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Firdaus Riski',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Guru Matematika',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(children: [
                                    Icon(Icons.favorite_border_rounded),
                                    SizedBox(width: 5),
                                    Text(
                                      "3219",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                  SizedBox(height: 5),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          child: Text(
                                            "matematika",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          child: Text(
                                            "trigonometri",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          child: Text(
                                            "geometri",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              // Icon titik tiga di sejajar teks Firdaus Riski
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
