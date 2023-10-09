import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moprog1/menu.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: 
                Colors.white,
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
                          child : Text('My Card', style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.black, fontWeight: FontWeight.bold
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
                              color : Colors.black,
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
                      child: Image.asset('assets/card.jpg'),
                      width: 1000,
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
