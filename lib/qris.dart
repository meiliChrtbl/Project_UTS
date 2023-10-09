import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moprog1/menu.dart';

class Qris extends StatefulWidget {
  const Qris({super.key});

  @override
  State<Qris> createState() => _QrisState();
}

class _QrisState extends State<Qris> {
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
                          child : Text('My Qr Code', style: TextStyle(
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
                              Icons.arrow_back_outlined,
                              size: 50,
                            ),
                            height: 170,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      child: Image.asset('assets/qris.jpg'),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
