// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers

import 'package:custom_grid_view/custom_grid_view.dart';
import 'package:emergency_call_thailand/view/page_1_ui.dart';
import 'package:emergency_call_thailand/view/page_2_ui.dart';
import 'package:emergency_call_thailand/view/page_3_ui.dart';
import 'package:emergency_call_thailand/view/page_4_ui.dart';
import 'package:emergency_call_thailand/view/page_5_ui.dart';
import 'package:emergency_call_thailand/view/page_6_ui.dart';
import 'package:emergency_call_thailand/view/page_7_ui.dart';
import 'package:emergency_call_thailand/view/page_8_ui.dart';
import 'package:flutter/material.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        title: Text(
          'Emergency Call Thailand',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomGridView(
        rows: 2,
        rowSpace: 4,
        elevation: 5,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page1UI(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/Police.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'แจ้งเหตุด่วน',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page2UI(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/Ambulance.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'กู้ชีพ กู้ภัย',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page3UI(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/doctor.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'การแพทย์',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Center(
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Page4UI(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/images/store.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'สาธารณูปโภค',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page5UI(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/Goverment.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'ราชการ',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page6UI(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/bank.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'ธนาคาร',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page7UI(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/bus.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'ขนส่ง',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page8UI(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/radio.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'สถานีวิทยุ',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
