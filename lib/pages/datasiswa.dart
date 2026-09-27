import 'package:flutter/material.dart';

class DataSiswa extends StatelessWidget {
  const DataSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Data Siswa Baru"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        titleTextStyle:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        shadowColor: Colors.black,
        elevation: 10),
      body: SingleChildScrollView(
        //nambahin ini biar bisa di scroll
        child: Column(
          //awalnya body column jadi child
          children: [
            const SizedBox(height: 30),
            Container(
              child: const Center(
                  child: Text(" Siswa Baru ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 150, 64),
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
            ),
            Container(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "NIS",
                      hintText: "Masukan Nis",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Nama",
                      hintText: "Masukan Nama",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Tempat Lahir",
                      hintText: " Masukan Tempat Lahir ",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Tanggal lahir",
                      hintText: "Masukan Tgl Lahir",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Jenis Kelamin",
                      hintText: "Masukan Jenis Kelamin",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "No. telp",
                      hintText: "Masukan Nomor Telepon",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Kosistensi Keahlian",
                      hintText: "Masukan Kosistensi Keahlian",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Kelas",
                      hintText: "Masukan Kelas",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Usia",
                      hintText: "Masukan Usia",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Alamat",
                      hintText: "Masukan Alamat",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      fixedSize: const Size(150, 40)),
                  onPressed: () {
                    Navigator.pushNamed(context, "/biodata");
                  },
                  child: const Text(
                    "Simpan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      fixedSize: const Size(150, 40)),
                  onPressed: () {
                    Navigator.pushNamed(context, "/beranda");
                  },
                  child: const Text(
                    "Selesai",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // =========================
      // FOOTER
      // =========================
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            // HOME
            IconButton(
              icon: const Icon(Icons.home),
              tooltip: "Home",
              onPressed: () {
                Navigator.pushNamed(context, "/beranda");
              },
            ),

            // KONTAK
            IconButton(
              icon: const Icon(Icons.contact_phone),
              tooltip: "Kontak",
              onPressed: () {
                // ISI ROUTING KONTAK DI SINI
              },
            ),

            // BROWSE
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: "Browse",
              onPressed: () {
                // ISI ROUTING BROWSE DI SINI
              },
            ),

            // KEMBALI
            IconButton(
              icon: const Icon(Icons.arrow_back),
              tooltip: "Kembali",
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
