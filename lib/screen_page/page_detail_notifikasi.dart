import 'package:flutter/material.dart';

class PageDetailNotifikasi extends StatefulWidget {
  const PageDetailNotifikasi({Key? key});

  @override
  State<PageDetailNotifikasi> createState() => _PageDetailNotifikasiState();
}

class _PageDetailNotifikasiState extends State<PageDetailNotifikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
              color: Color(0xFF5775BA),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(800),
                bottomRight: Radius.circular(800),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Notifikasi',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.3,
          left: 0,
          right: 0,
          bottom: 40,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    right: 50,
                  ),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/icons/icon-notif1.png",
                          width: 50,
                          height: 50,
                        ),
                      ),
                      SizedBox(width: 16), // Jarak antara ikon dan teks
                      Text(
                        'Laporan Progres Belajar Mingguanmu', // Ganti dengan teks yang diinginkan
                        style: TextStyle(
                          fontSize:
                              16, // Sesuaikan dengan ukuran teks yang diinginkan
                          fontWeight: FontWeight
                              .bold, // Sesuaikan dengan gaya teks yang diinginkan
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        // Aksi ketika card diklik, misalnya navigasi ke halaman lain
                      },
                      child: Container(
                        width: 700,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              // Icon dengan background di sebelah kiri
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Image.asset(
                                  "assets/icons/icon-notif.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Study Teach',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Kepada Saya',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                ],
                              ),
                              SizedBox(width: 150),
                              IconButton(
                                icon: Icon(Icons.arrow_circle_left_outlined),
                                onPressed: () {
                                  // Aksi ketika ikon titik tiga ditekan
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/gambar/StudyTeach.png",
                  width: 300,
                  height: 100,
                ),
                Image.asset(
                  "assets/icons/icon-notif.png",
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'HI! Keira Herlambang \nprogres belajar mingguanmu \nsudah bagus',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(50),
                    child: Text(
                      'Progres belajarmu sudah bagus, lanjutkan dan tingkatkan semangat \nbelajar kamu!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle button tap
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xFFE58A7B)),
                  ),
                  child: Text(
                    'Lanjutkan Belajar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Divider(
                    thickness: 1, // Set the thickness of the divider
                    color: Colors.black, // Set the color of the divider
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          child: Image.asset(
                            'assets/icons/icon-notif.png', // Ganti dengan path gambar yang sesuai
                            width:
                                100, // Sesuaikan dengan lebar gambar yang diinginkan
                            height:
                                100, // Sesuaikan dengan tinggi gambar yang diinginkan
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Latihan mengasah keterampilanmu!',
                              style: TextStyle(
                                fontSize:
                                    18, // Sesuaikan dengan ukuran teks yang diinginkan
                                fontWeight: FontWeight
                                    .bold, // Sesuaikan dengan gaya teks yang diinginkan
                              ),
                            ),
                            SizedBox(height: 10), // Jarak antara dua teks
                            Text(
                              'Belajar adalah kebiasaan sehat.\nBagaimana kalau berlatih di StudyTeach aja?',
                              style: TextStyle(
                                fontSize:
                                    16, // Sesuaikan dengan ukuran teks yang diinginkan
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle button tap
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xFF0070D7)),
                  ),
                  child: Text(
                    'Terus Berlatih',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Divider(
                    thickness: 1, // Set the thickness of the divider
                    color: Colors.black, // Set the color of the divider
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 10),
                  child: Row(
                    children: [
                      Text(
                        '13940 Penggilingan Cakung Jakarta Timur',
                        style: TextStyle(
                          fontSize:
                              16, // Sesuaikan dengan ukuran teks yang diinginkan
                        ),
                      ),
                      Image.asset(
                        'assets/icons/instagram.png', // Ganti dengan path gambar pertama yang sesuai
                        width:
                            50, // Sesuaikan dengan lebar gambar yang diinginkan
                        height:
                            50, // Sesuaikan dengan tinggi gambar yang diinginkan
                      ),
                      Image.asset(
                        'assets/icons/twitter.png', // Ganti dengan path gambar kedua yang sesuai
                        width:
                            50, // Sesuaikan dengan lebar gambar yang diinginkan
                        height:
                            50, // Sesuaikan dengan tinggi gambar yang diinginkan
                      ),
                      Image.asset(
                        'assets/icons/youtube.png', // Ganti dengan path gambar ketiga yang sesuai
                        width:
                            50, // Sesuaikan dengan lebar gambar yang diinginkan
                        height:
                            50, // Sesuaikan dengan tinggi gambar yang diinginkan
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0, top: 10),
                  child: Text(
                    "Ayo berlangganan secara gratis !!! ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Handle button tap
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFF89B8FF)),
                        ),
                        icon: Icon(Icons.reply,
                            color: Colors.white), // Icon for 'Balas' button
                        label: Text(
                          'Balas',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 30),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Handle button tap
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFFFF7777)),
                        ),
                        icon: Icon(Icons.forward,
                            color: Colors.white), // Icon for 'Teruskan' button
                        label: Text(
                          'Teruskan',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
