import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moprog1/transaction/transaksi.dart';
import 'package:moprog1/transaction/transaksiBB.dart';
import 'package:moprog1/transaction/transaction_menu.dart';
import 'package:moprog1/transaction/transaksiskn.dart';

class TransaksiLayanan extends StatefulWidget {
  const TransaksiLayanan({super.key});

  @override
  State<StatefulWidget> createState() => _TransaksiLayananState();
}

class _TransaksiLayananState extends State<TransaksiLayanan> {
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
        body: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child : Text('Transfer', style: TextStyle(
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Transaksi()))
                    },
                    child: Container(
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: 50,
                      ),
                      height: 170,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  new GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TransaksiBBfast())),
                    },
                    child: Container(
                      width: 370.0,
                      height: 130.0,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("BI-Fast",
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 26, 64, 1),
                                    fontSize: 20)),
                            Text(
                                "Minimal Transaksi :                  Rp10.000,00\nBiaya Admin :                             Rp2.500,00\nWaktu Pengerjaan :                  24 jam",
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 26, 64, 1),
                                    fontSize: 16)),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TransaksiMenu())),
                    },
                    child: Container(
                      width: 370.0,
                      height: 130.0,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Real Time Online",
                                style: TextStyle(
                                    color: Color.fromRGBO(79, 67, 172, 1),
                                    fontSize: 20)),
                            Text(
                                "Minimal Transaksi :                  Rp10.000,00\nBiaya Admin :                            Rp6.500,00\nWaktu Pengerjaan :                  24 jam",
                                style: TextStyle(
                                    color: Color.fromRGBO(79, 67, 172, 1),
                                    fontSize: 16)),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
