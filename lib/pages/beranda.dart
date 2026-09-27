import 'package:flutter/material.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    // return HalRow();
    return Scaffold(
      appBar: AppBar(
        title: const Text("halaman Biodata"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        titleTextStyle:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        shadowColor: Colors.black,
        elevation: 10,
      ),
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/biodata");
              },
              child: const Text("Biodata"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/datasiswa");
              },
              child: const Text("Data Siswa"),
            ),
          ],
        ),
      ),
    );
  }
}
