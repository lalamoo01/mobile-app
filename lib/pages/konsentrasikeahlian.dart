import 'package:flutter/material.dart';
import 'biodata.dart'; 

class KonsentrasiKeahlian extends StatelessWidget {
  const KonsentrasiKeahlian({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeaf3ff),

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Konsentrasi Keahlian",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0,
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Container(
            width: 650,
            padding: const EdgeInsets.all(20),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),

            child: Column(
              children: [

                // HEADER
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),

                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff1e4fa3),
                        Color(0xff3678d4),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),

                  child: const Column(
                    children: [
                      Icon(
                        Icons.school,
                        size: 50,
                        color: Colors.white,
                      ),

                      SizedBox(height: 8),

                      Text(
                        "Data Konsentrasi Keahlian",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "Silakan lengkapi data konsentrasi keahlian",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // ID KK
                TextField(
                  decoration: InputDecoration(
                    labelText: "ID KK",
                    hintText: "Masukkan ID KK",
                    prefixIcon: const Icon(Icons.badge_outlined),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                // NAMA KK
                TextField(
                  decoration: InputDecoration(
                    labelText: "Nama KK",
                    hintText: "Masukkan nama konsentrasi keahlian",
                    prefixIcon: const Icon(Icons.school_outlined),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // TOMBOL
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Kembali",
                        style: TextStyle(
                          color: Color(0xff555555),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    const SizedBox(width: 20),

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Biodata(),
                          ),
                        );
                      },
                      child: const Text(
                        "Simpan",
                        style: TextStyle(
                          color: Color(0xff1e4fa3),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
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
                // routing kontak
              },
            ),

            // BROWSE
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: "Browse",
              onPressed: () {
                // routing browse
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