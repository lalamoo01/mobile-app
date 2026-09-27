import "package:flutter/material.dart";

class Biodata extends StatelessWidget {
  const Biodata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Mobile App Class",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 247, 137, 3),
          shadowColor: Colors.black,
          elevation: 10,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 30,
                //   child: Image.asset("assets/images/logo.png")
              ),
              Image.asset('images/logo.png'),
              const Text("Biodata",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: " Serif",
                      height: 1.5,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Container(
                    width: 80,
                    height: 112,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,

                          style: BorderStyle.solid,
                          width: 1,
                          //shadowColor: Colors.black,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        )),

                    // Image.asset('images/logo.png'),
                    // child: Center(images: new Image.asset('images/logo.png')),

                    child: Center(
                        child:
                            Image.asset("images/ono_1.jpg", fit: BoxFit.cover)),
                    // child: Center(child: Text('Foto 2')),
                  ),
                  Container(
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(66, 42, 36, 36),
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Center(
                        child: Image.asset("images/ono_2.jpg",
                            fit: BoxFit.contain)),
                  ),

                  // Gambar ke
                  Container(
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Image.asset("images/ono_3.jpg",
                            fit: BoxFit.contain)),

                    // child: Center(child: Text('Foto 3')),
                  ),
                  Container(
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Image.asset("images/ono_4.jpg",
                            fit: BoxFit.contain)),
                    // child: Center(child: Text('Foto 4')),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Container(
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Image.asset("images/ono_5.jpg",
                            fit: BoxFit.contain)),
                  ),
                  Container(
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Image.asset("images/ono_6.jpg",
                            fit: BoxFit.contain)),
                  ),
                  Container(
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Image.asset("images/ono_7.jpg",
                            fit: BoxFit.contain)),
                  ),
                  Container(
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Image.asset("images/ono_8.jpg",
                            fit: BoxFit.contain)),
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
