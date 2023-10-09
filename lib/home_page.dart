import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moprog1/login.dart';
import 'package:moprog1/register.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Color.fromARGB(236, 67, 13, 167),
        body: Container(
          decoration: const BoxDecoration(
              color: 
                Colors.white
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset('assets/mainpage.png',
                  height: 500,
                ),
                SizedBox(
                  height: 10,
                  width: 50,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 45),
                        backgroundColor: Color.fromRGBO(115, 75, 109, 1),
                        shape: StadiumBorder()),
                    icon: const Icon(
                      Icons.login,
                      color: Colors.white,
                      size: 30,
                    ),
                    label: const Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 37),
                          backgroundColor: Color.fromRGBO(66, 39, 90, 0.91),
                          shape: StadiumBorder()),
                      icon: const Icon(
                        Icons.person_add_alt_1_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      label: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
