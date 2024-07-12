import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Remidi Mobile Programming Lanjut'),
          backgroundColor: Colors.teal, // Mengatur warna teal pada AppBar
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TeksUtama(
                  teks1: '',
                  teks2: 'DAFTAR ABSENSI #113 MOBILE PROGRAMMING LANJUT',
                  isHeader: true, // Menandai sebagai header
                ),
                TeksUtama(
                  teks1: '30. RAYHAN RAFIUD DAROJAT',
                  teks2: 'STI202102221',
                ),
                TeksUtama(
                  teks1: '31. SUPRIYONO',
                  teks2: 'STI202102222',
                ),
                TeksUtama(
                  teks1: '32. INNAYAH NUR FAUZIAH',
                  teks2: 'STI202102224',
                ),
                TeksUtama(
                  teks1: '33. RESTA AMALIA YULIANI',
                  teks2: 'STI202102226',
                ),
                TeksUtama(
                  teks1: '34. ALISHA NATHANIA SEPTIANTY',
                  teks2: 'STI202102228',
                ),
                TeksUtama(
                  teks1: '35. NUR KHOLIQ',
                  teks2: 'STI202102234',
                  backgroundColor: Colors
                      .yellow, // Menambahkan warna latar belakang kuning pada teks
                ),
                TeksUtama(
                  teks1: '36. ZAINUN',
                  teks2: 'STI202102243',
                ),
                TeksUtama(
                  teks1: '37. ALIYA PUTRI NURRAHMANI',
                  teks2: 'STI202102244',
                ),
                TeksUtama(
                  teks1: '38. ARIF ARDI ANTORO',
                  teks2: 'STI202102246',
                ),
                TeksUtama(
                  teks1: '39. ROMI TRIMONO',
                  teks2: 'STI202102251',
                ),
                TeksUtama(
                  teks1: '40. KHAERUL HIDAYAT',
                  teks2: 'STI202102258',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  final Color? backgroundColor; // Menambahkan parameter backgroundColor
  final bool isHeader; // Menambahkan parameter isHeader

  const TeksUtama({
    Key? key,
    required this.teks1,
    required this.teks2,
    this.backgroundColor, // Menambahkan parameter backgroundColor
    this.isHeader = false, // Menambahkan parameter isHeader
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isHeader) {
      // Kondisi untuk header, tidak memberikan box
      return Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 50, // Memberikan tinggi yang sama untuk setiap teks1
            child: Text(
              teks2,
              textDirection: TextDirection.ltr,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.red, // Mengatur warna teks menjadi merah
              ),
            ),
          ),
        ],
      );
    } else {
      // Kondisi untuk teks utama biasa, memberikan box
      return Container(
        margin: const EdgeInsets.all(8.0), // Memberikan margin antar box
        padding: const EdgeInsets.all(8.0), // Memberikan padding dalam box
        decoration: BoxDecoration(
          color:
              backgroundColor ?? Colors.orange, // Warna latar belakang orange
          border: Border.all(
              color: Colors.black), // Memberikan border hitam pada box
        ),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 50, // Memberikan tinggi yang sama untuk setiap teks1
              child: Text(
                teks1,
                textDirection: TextDirection.ltr,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Mengatur warna teks menjadi hitam
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 30, // Memberikan tinggi yang sama untuk setiap teks2
              child: Text(
                teks2,
                textDirection: TextDirection.ltr,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black, // Mengatur warna teks menjadi hitam
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
