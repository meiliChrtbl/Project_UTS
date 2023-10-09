import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moprog1/menu.dart';

class CS extends StatefulWidget {
  const CS({super.key});

  @override
  State<CS> createState() => _CSState();
}

class _CSState extends State<CS> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(66, 39, 90, 0.91),
            Color.fromRGBO(115, 75, 109, 1),
          ],
          begin: FractionalOffset(1.0, 1.0),
        ),
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Stack(children: [
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child : Text('Help & Support', style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.white, fontWeight: FontWeight.bold
                                      ),),
                          width: 200,
                          height: 170,
                          padding : EdgeInsets.only(
                            top: 70
                          ),
                        ),
                        new GestureDetector(
                          onTap: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainMenu()))
                          },
                          child: Container(
                            child: Icon(
                              Icons.exit_to_app_rounded,
                              size: 50,
                            ),
                            height: 170,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              'QNA',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: new BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [                            
                              Color.fromRGBO(182, 182, 182, 0.664),
                              Color.fromRGBO(218, 217, 217, 1),
                            ],
                            begin: FractionalOffset(1.0, 1.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 5,
                            )
                          ]),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ExpandablePanel(
                          theme: ExpandableThemeData(
                            iconColor: Colors.white,
                          ),
                          header: Text(
                            "Bagaimana cara mendaftarkan akun?",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          collapsed: Text(
                            "",
                            style: TextStyle(fontSize: 0),
                          ),
                          expanded: Text(
                            List.generate(
                                1,
                                    (_) =>
                                "\n1. Untuk mendaftarkan akun silahkan ke CashApp terdekat untuk ditautkan ke akun yang akan di registrasi\n\n"
                                    "2. Masuk ke Aplikasi CashApp untuk melakukan registrasi akun\n\n"
                                    "3. Tekan tombol Register/Sign-In dan masukkna Username, password, Confirm Password (masukkan password yang sama seperti sebelumnya) dan tekan tombol Register\n\n"
                                    "4. Kemudian, Tekan tombol Log In dan masukkan Username dan Password yang sesuai dengan registrasi akun sebelumnya\n\n"
                                    "5. Akun telah teregristasi").join(
                                '\n'),
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ExpandablePanel(
                          theme: ExpandableThemeData(
                            iconColor: Colors.white,
                          ),
                          header: Text(
                            "Transaksi saya tidak berjalan",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          collapsed: Text(
                            "",
                            style: TextStyle(fontSize: 0),
                          ),
                          expanded: Text(
                            List.generate(
                                1,
                                    (_) => "1. Pastikan koneksi anda stabil\n\n"
                                    "2. Aplikasi sedang sibuk\n\n"
                                    "3. Restart aplikasi\n\n"
                                    "4. Hubungi customer service kami").join(
                                '\n'),
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ExpandablePanel(
                          theme: ExpandableThemeData(
                            iconColor: Colors.white,
                          ),
                          header: Text(
                            "Aplikasi sering keluar sendiri",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          collapsed: Text(
                            "",
                            style: TextStyle(fontSize: 0),
                          ),
                          expanded: Text(
                            List.generate(
                                1,
                                    (_) => "1. Koneksi Internet tidak stabil\n\n"
                                    "2. Tutup aplikasi lainnya yang memungkinkan Aplikasi tidak maksimal\n\n"
                                    "3. Restart kembali Aplikasi").join('\n'),
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
        bottomNavigationBar: Container(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainMenu(),
                  ),
                );
              },
              icon: Image.asset('assets/CScall.png'),
              iconSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
