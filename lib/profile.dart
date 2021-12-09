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
      child: Column(
        children: <Widget>[
          Stack(children: <Widget>[
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
                              MaterialPageRoute(builder: (_) => Dashboard()));
                        },
                      ),
                      const SizedBox(width: 80,),
                      const Text(
                        "PROFILE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 110),
                      IconButton(
                        iconSize: 30.0,
                        icon: const Icon(Icons.edit_location_alt_rounded),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 140, 15, 0),
              height: MediaQuery.of(context).size.height * 0.35,
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
                        padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                        child: const CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.blue,
                          backgroundImage: AssetImage('assets/man.jpg'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 95, 0, 0),
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
                        padding: const EdgeInsets.fromLTRB(15, 125, 0, 0),
                        child: const Text(
                          "STD - 12(B)",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
         
          ]
          )
        ]
      )
        )
    );
  }
  }