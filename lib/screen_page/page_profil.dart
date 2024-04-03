import 'package:flutter/material.dart';
import 'package:studytech_apps/screen_page/page_edit_profil.dart';

class PageProfile extends StatefulWidget {
  const PageProfile({Key? key}) : super(key: key);

  @override
  State<PageProfile> createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  final TextEditingController namaController =
      TextEditingController(text: 'Keira Herlambang');
  final TextEditingController tgl_lahirController =
      TextEditingController(text: 'Jakarta,12 Januari 2003');
  final TextEditingController jeKelController =
      TextEditingController(text: 'Perempuan');
  final TextEditingController alamatController = TextEditingController(
      text: 'Jl.Antasena, rt06/06, duren sawit, jakarta timur');
  final TextEditingController sklhController =
      TextEditingController(text: 'SMKN 21 JAKARTA');
  final TextEditingController ortuController =
      TextEditingController(text: 'Wahyudi');
  final TextEditingController nohpController =
      TextEditingController(text: '08312734687912');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tombol Kembali

                // Teks Kontak Saya
                Text(
                  'Kontak Saya',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                // Spacer untuk memberikan ruang di antara tombol kembali dan teks kontak
                Spacer(),
              ],
            ),
          ),
          SizedBox(
              height:
                  10), // Spacer pertama untuk memberikan ruang di antara header dan konten
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/gambar/profile.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Keira Herlambang',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'ilpengding@gmail.com',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '088123146555',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Added SizedBox for spacing
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageEditProfile()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 254, 254, 255),
                      ),
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(370, 40),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: Text(
                      'Ubah Profile',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20), // Added SizedBox for spacing
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 410,
                      height: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 239, 239, 252),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Data Pribadi",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10), // Added SizedBox for spacing
                            TextField(
                              controller: namaController,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Nama',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(height: 10), // Added SizedBox for spacing
                            TextField(
                              controller: tgl_lahirController,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Tempat Tanggal Lahir',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(height: 10), // Added SizedBox for spacing
                            TextField(
                              controller: jeKelController,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Jenis Kelamin',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Added SizedBox for spacing
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      width: 410,
                      height: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 239, 239, 252),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 5, left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              controller: alamatController,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Detail Alamat',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(height: 10), // Added SizedBox for spacing
                            TextField(
                              controller: sklhController,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Sekolah Asal',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(height: 10), // Added SizedBox for spacing
                            TextField(
                              controller: ortuController,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Nama Orang Tua',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(height: 10), // Added SizedBox for spacing
                            TextField(
                              controller: nohpController,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Nomor Telepon',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
