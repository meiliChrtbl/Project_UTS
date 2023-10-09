import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moprog1/custserv.dart';
import 'package:moprog1/qris.dart';
import 'package:moprog1/transaction/transaksi.dart';
import 'package:moprog1/profil.dart';
import 'package:moprog1/home_page.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
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
        appBar: AppBar(
          leading: 
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Image.asset('assets/menu_logo.png'),
          ),
          title:  Text('Cash App',
                      style : TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                  ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          toolbarHeight: 80,
          actions: <Widget>[
            Padding(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                child: Icon(Icons.logout_sharp),
              ),
              padding: EdgeInsets.only(
                right: 10.0,
              ),
            ),
          ],
          actionsIconTheme: IconThemeData(color: Colors.black, size: 60),
        ),
        body: 
          ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  Text('Hello, welcome User1',textAlign: TextAlign.left, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, )),
                  
                  const SizedBox(height: 50,),
                  GridView.count(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 40,
                  children: [
                    itemDashboard1('Profil', CupertinoIcons.person, Colors.white),
                    itemDashboard2(
                        'Transfer', CupertinoIcons.graph_circle, Colors.white),
                    itemDashboard3('Qris', CupertinoIcons.person_2,
                        Colors.white),
                  ],
                ),
                ],
              ),
            ],
            ),
            ),
    );
  }

  itemDashboard1(String title, IconData iconData, Color background) => InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Profil()));
    },
    child: Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 120,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('assets/profil.png',
                      height: 100, width: 105,),
                  ),
                  const SizedBox(height: 0),
                ],
              ),
            ),
          ],
        ),

        Text(title, style: TextStyle(fontSize: 14))
      ],
    ),
  );

  itemDashboard2(String title, IconData iconData, Color background) => InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Transaksi()));
    },
    child: Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 120,
                    width: 140,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset('assets/transactionicon.png',
                      height: 100, width: 105,),
                  ),
                  const SizedBox(height: 0),
                ],
              ),
            ),
          ],
        ),
        Text(title, style: TextStyle(fontSize: 14))
      ],
    ),
  );

  itemDashboard3(String title, IconData iconData, Color background) => InkWell(
    onTap: (){
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Qris()));
    },
    child: Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 120,
                    width: 140,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset('assets/qricon.png',
                      height: 100, width: 105,),
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(title, style: TextStyle(fontSize: 14))
      ],
    ),
  );
}
