import 'package:flutter/material.dart';
import 'package:prototype/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                        icon: const Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Profile()));
                        },
                      ),
                      const Text(
                        "DASHBOARD",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 140),
                      IconButton(
                        iconSize: 30.0,
                        icon: const Icon(Icons.notifications_on_outlined),
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
              height: MediaQuery.of(context).size.height * 0.23,
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
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(20, 350, 20, 0),
                    height: MediaQuery.of(context).size.height * 0.17,
                    // width: MediaQuery.of(context).size.width * 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          const BoxShadow(
                              blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                        ]),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                              child: CircleAvatar(
                                  radius: 29,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/syllabus.jpg",
                                      height: 45,
                                    ),
                                  ),
                                  backgroundColor: const Color(0xffdce0eb)),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 95, 0, 0),
                              child: const Text(
                                "Syllabus",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  //fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //SizedBox(wi),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(20, 350, 20, 0),
                    height: MediaQuery.of(context).size.height * 0.17,
                    // width: MediaQuery.of(context).size.width * 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          const BoxShadow(
                              blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                        ]),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                              child: CircleAvatar(
                                  radius: 29,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/attendence.jpg",
                                      height: 45,
                                      //color: Colors.blue,
                                    ),
                                  ),
                                  backgroundColor: const Color(0xffdce0eb)

                                  //backgroundColor:  Color(0xffFDCF09),
                                  ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 95, 0, 0),
                              child: const Text(
                                "Attendence",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  //fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(20, 510, 20, 0),
                    height: MediaQuery.of(context).size.height * 0.17,
                    // width: MediaQuery.of(context).size.width * 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          const BoxShadow(
                              blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                        ]),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
                              child: CircleAvatar(
                                  radius: 29,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/hw.jpg",
                                      height: 45,
                                    ),
                                  ),
                                  backgroundColor: const Color(0xffdce0eb)

                                  //backgroundColor:  Color(0xffFDCF09),
                                  ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 95, 0, 0),
                              child: const Text(
                                "Home Work",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  //fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //SizedBox(wi),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(20, 510, 20, 0),
                    height: MediaQuery.of(context).size.height * 0.17,
                    // width: MediaQuery.of(context).size.width * 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          const BoxShadow(
                              blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                        ]),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                              child: CircleAvatar(
                                radius: 29,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    "assets/result.jpg",
                                    height: 45,
                                  ),
                                ),

                                backgroundColor: const Color(0xffdce0eb),
                                //backgroundColor:  Color(0xffFDCF09),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(5, 95, 0, 0),
                              child: const Text(
                                "Result",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  //fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ]),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Row(
              // margin: EdgeInsets.fromLTRB(20, 10, 0,0),
              children: const [
                Text(
                  "Teachers",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 5, 0, 0),
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      // width: MediaQuery.of(context).size.width * 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                          ]),
                      child: Image.asset(
                        'assets/ban.jpg',
                        height: 5,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      //color: Colors.blue,
                      height: MediaQuery.of(context).size.height * 0.07,
                      // width: MediaQuery.of(context).size.width * 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                          ]),
                      child: Image.asset('assets/anto.jpg'),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      //color: Colors.green,
                      height: MediaQuery.of(context).size.height * 0.07,
                      // width: MediaQuery.of(context).size.width * 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                          ]),
                      child: Image.asset('assets/an.jpg'),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      //color: Colors.yellow,
                      height: MediaQuery.of(context).size.height * 0.07,
                      // width: MediaQuery.of(context).size.width * 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                          ]),
                      child: Image.asset('assets/ar.jpg'),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      //color: Colors.orange,
                      height: MediaQuery.of(context).size.height * 0.07,
                      // width: MediaQuery.of(context).size.width * 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                          ]),
                      child: Image.asset('assets/al.jpg'),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      //color: Colors.orange,
                      height: MediaQuery.of(context).size.height * 0.07,
                      // width: MediaQuery.of(context).size.width * 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                          ]),
                      child: Image.asset('assets/ach.jpg'),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      //color: Colors.orange,
                      height: MediaQuery.of(context).size.height * 0.07,
                      // width: MediaQuery.of(context).size.width * 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                        ],
                      ),
                      child: Image.asset('assets/ath.jpg'),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      //color: Colors.orange,
                      height: MediaQuery.of(context).size.height * 0.07,
                      // width: MediaQuery.of(context).size.width * 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                        ],
                      ),
                      child: Image.asset('assets/ban.jpg'),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      //color: Colors.orange,
                      height: MediaQuery.of(context).size.height * 0.07,
                      // width: MediaQuery.of(context).size.width * 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                        ],
                      ),
                      child: Image.asset('assets/anto.jpg'),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      //color: Colors.orange,
                      height: MediaQuery.of(context).size.height * 0.07,
                      // width: MediaQuery.of(context).size.width * 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                        ],
                      ),
                      child: Image.asset('assets/an.jpg'),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      //color: Colors.orange,
                      height: MediaQuery.of(context).size.height * 0.07,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                        boxShadow: const [
                          BoxShadow(blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                        ],
                      ),
                      child: Image.asset('assets/ar.jpg'),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      //color: Colors.orange,
                      height: MediaQuery.of(context).size.height * 0.07,
                      // width: MediaQuery.of(context).size.width * 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                        ],
                      ),
                      child: Image.asset('assets/al.jpg'),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      //color: Colors.orange,
                      height: MediaQuery.of(context).size.height * 0.07,
                      // width: MediaQuery.of(context).size.width * 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                        ],
                      ),
                      child: Image.asset('assets/ach.jpg'),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      //color: Colors.orange,
                      height: MediaQuery.of(context).size.height * 0.07,
                      // width: MediaQuery.of(context).size.width * 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                        ],
                      ),
                      child: Image.asset('assets/ath.jpg'),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      //color: Colors.orange,
                      height: MediaQuery.of(context).size.height * 0.07,
                      // width: MediaQuery.of(context).size.width * 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 2.0, color: Color(0xFFCFCCC4)),
                          ]),
                      child: Image.asset('assets/ar.jpg'),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
