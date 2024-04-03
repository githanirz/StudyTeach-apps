import 'package:flutter/material.dart';
import 'package:studytech_apps/screen_page/page_detail_notifikasi.dart';

import 'item.dart';

class Pagenotifikasi extends StatelessWidget {
  const Pagenotifikasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
                          'Studyteach',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        'Notifikasi',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 40,
              top: 200,
            ),
            child: ListView.builder(
              itemCount: notif.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          // Gunakan Navigator untuk berpindah halaman
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageDetailNotifikasi()),
                        );
                      },
                      child: Container(
                        width: 700,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.only(
                            bottom: 10), // Added margin for spacing
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
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Row(
                            children: [
                              // Icon dengan background di sebelah kiri
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Image.asset(
                                  "assets/icons/icon-notif.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),

                              SizedBox(width: 10), // Jarak antara icon dan teks
                              // Icon di sebelah teks index 0
                              Image.asset(
                                "assets/icons/icon-notif1.png", // Ubah sesuai dengan path gambar ikon Anda
                                width: 20,
                                height: 20,
                              ),

                              SizedBox(width: 5), // Jarak antara ikon dan teks
                              // Teks title di sebelah kanan ikon
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    notif[index][0],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    notif[index][1],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade700,
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
                    SizedBox(
                        height: 10), // Added SizedBox for spacing between cards
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
