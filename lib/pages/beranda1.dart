import 'package:flutter/material.dart';

class Beranda1 extends StatelessWidget {
  const Beranda1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Beranda"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        shadowColor: Colors.black,
        elevation: 10,
      ),

      // =========================
      // MENU
      // =========================
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: ListView(
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 25),
            children: [

              // BIODATA
              Card(
                elevation: 3,
                margin: const EdgeInsets.only(bottom: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {
                    Navigator.pushNamed(context, "/biodata");
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.shade50,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.badge_outlined,
                            size: 30,
                            color: Colors.deepPurple,
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Expanded(
                          child: Text(
                            "Biodata",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // DATA SISWA
              Card(
                elevation: 3,
                margin: const EdgeInsets.only(bottom: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {
                    Navigator.pushNamed(context, "/datasiswa");
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.groups_outlined,
                            size: 30,
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Expanded(
                          child: Text(
                            "Data Siswa",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // DATA SEKOLAH
              Card(
                elevation: 3,
                margin: const EdgeInsets.only(bottom: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {
                    Navigator.pushNamed(context, "/datasekolah");
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.green.shade50,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.school_outlined,
                            size: 30,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Expanded(
                          child: Text(
                            "Data Sekolah",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // KONSENTRASI KEAHLIAN
              Card(
                elevation: 3,
                margin: const EdgeInsets.only(bottom: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {
                    Navigator.pushNamed(
                        context, "/konsentrasikeahlian");
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.orange.shade50,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.auto_awesome_outlined,
                            size: 30,
                            color: Colors.orange,
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Expanded(
                          child: Text(
                            "Konsentrasi Keahlian",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
            // LOGOUT
            IconButton(
              icon: const Icon(Icons.logout),
              tooltip: "Logout",
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/login");
              },
            ),
          ],
        ),
      ),
    );
  }
}