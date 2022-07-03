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
      body: DefaultTabController(
        length: 8,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: TabBar(
                labelColor: Colors.black87,
                labelStyle: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                isScrollable: true,
                unselectedLabelColor: Colors.black54,
                unselectedLabelStyle: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                indicatorColor: Colors.deepOrange,
                tabs: [
                  Tab(
                    text: "แจ้งเหตุด่วนเหตุร้าย",
                  ),
                  Tab(
                    text: "แจ้งเหตุฉุกเฉิน/กู้ชีพ/กู้ภัย",
                  ),
                  Tab(
                    text: "บริการทางการแพทย์",
                  ),
                  Tab(
                    text: "สาธารณูปโภค",
                  ),
                  Tab(
                    text: "หน่วยงานราชการ",
                  ),
                  Tab(
                    text: "ธนาคาร",
                  ),
                  Tab(
                    text: "ขนส่ง",
                  ),
                  Tab(
                    text: "อื่น ๆ",
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Page1UI(),
                  Page2UI(),
                  Page3UI(),
                  Page4UI(),
                  Page5UI(),
                  Page6UI(),
                  Page7UI(),
                  Page8UI()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
