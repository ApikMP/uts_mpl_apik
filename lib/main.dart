import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final biodata = <String, String>{};

  MyApp({Key? key}) : super(key: key) {
    biodata['name'] = 'Apik Maulidah Purnaningsih';
    biodata['NIM'] = 'STI202102475';
    biodata['alamat'] = 'Desa Bakulan, kec. Kemangkon, kab. Purbalingga';
    biodata['kelas'] = 'S1 Teknik Informatika';
    var value = "Screenshot (246)";
    biodata['image'] = value;
    biodata['desc'] =
        'Saya Apik Maulidah Purnaningsih seorang mahasiswa semester 6 di STMIK Widya Utama. Saya mengambil program studi S1 Teknik Informatika. Saya berasal dari Purbalingga. Mengasah kemampuan diri dengan mengikuti organisasi dan kegiatan di kampus sedari menjadi mahasiswa baru hingga sekarang. Saya mampu bekerja dalam tim dan dapat berkomunikasi dengan baik.';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Biodata",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profil Pictures'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              const Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/apik.jpg'),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nama:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      biodata['name'] ?? '',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'NIM :',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      biodata['NIM'] ?? '',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Alamat:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      biodata['alamat'] ?? '',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Kelas:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      biodata['kelas'] ?? '',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Deskripsi:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      biodata['desc'] ?? '',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}