import 'package:flutter/material.dart';
import 'package:prototype/dashboard.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  get boxShadow => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          //padding: EdgeInsets.fromLTRB(20, 0,20, 20),
          child: Column(children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.28,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5.0),
                    bottomRight: Radius.circular(50.0),
                    topLeft: Radius.circular(5.0),
                    bottomLeft: Radius.circular(50.0)),
                color: Color(0xff0243d0),
              ),
              padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        iconSize: 30.0,
                        icon: const Icon(Icons.arrow_back),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const Dashboard()));
                        },
                      ),
                      const SizedBox(
                        width: 95,
                      ),
                      const Text(
                        "PROFILE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 95),
                    const ImageIcon(
                        AssetImage("assets/icon.png"),
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 140, 20, 0),
              height: MediaQuery.of(context).size.height * 0.33,
              width: MediaQuery.of(context).size.width * 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                  ]),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(141, 40, 0, 0),
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                          backgroundImage: AssetImage('assets/man.jpg'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(120, 115, 0, 0),
                        child: const Text(
                          "Ansh Sharma",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(130, 145, 0, 0),
                        child: const Text(
                          "STD - 12(B)",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(30, 170, 30, 0),
                        child: const Divider(
                          color: Colors.grey,
                          height: 20,
                          thickness: 0.3,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(70, 190, 0, 30),
                        child: const Text(
                          "Lorem Ipsum is simply dummy text",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            //fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(105, 210, 0, 30),
                        child: const Text(
                          "of the standard dummy",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            //fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 430, 20, 0),
              height: MediaQuery.of(context).size.height * 0.13,
              // width: MediaQuery.of(context).size.width * 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                  ]),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                        child: Row(
                          children: [
                            //const SizedBox(width: 10),
                            IconButton(
                              iconSize: 20.0,
                              icon: const Icon(Icons.phone),
                              color: Colors.black,
                              onPressed: () {},
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "+91  9999900000",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
                          child: Row(children: [
                            IconButton(
                              iconSize: 20.0,
                              icon: const Icon(Icons.email),
                              color: Colors.black,
                              onPressed: () {},
                            ),

                            const SizedBox(width: 10),
                            const Text(
                              "anshsharma@gmail.com",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ])),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 570, 20, 0),
              height: MediaQuery.of(context).size.height * 0.08,
              // width: MediaQuery.of(context).size.width * 100,
              decoration: BoxDecoration(
                  color: const Color(0xffdce0eb),
                  borderRadius: BorderRadius.circular(20.0),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                  ]),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Row(children: [
                            const Text(
                              "Personal Detail",
                              style: TextStyle(
                                color: Color(0xff0243d0),
                                fontSize: 18,
                                //fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 150),
                            IconButton(
                              iconSize: 20.0,
                              icon: const Icon(Icons.arrow_forward),
                              color: const Color(0xff0243d0),
                              onPressed: () {},
                            ),
                          ])),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 650, 20, 0),
              height: MediaQuery.of(context).size.height * 0.08,
              // width: MediaQuery.of(context).size.width * 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xffdce0eb),
                  boxShadow: const [
                    BoxShadow(blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                  ]),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Row(children: [
                            const Text(
                              "Friends List",
                              style: TextStyle(
                                color: Color(0xff0243d0),
                                fontSize: 18,
                                //fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 175),
                            IconButton(
                              iconSize: 20.0,
                              icon: const Icon(Icons.arrow_forward),
                              color: const Color(0xff0243d0),
                              onPressed: () {},
                            ),
                          ])),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ])),
    );
  }
}
