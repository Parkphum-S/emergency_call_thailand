import 'package:emergency_call_thailand/model/call_list.dart';
import 'package:emergency_call_thailand/view/detail_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page1UI extends StatefulWidget {
  const Page1UI({Key? key}) : super(key: key);

  @override
  State<Page1UI> createState() => _Page1UIState();
}

class _Page1UIState extends State<Page1UI> {
  List<CallLineData> _callLineData = [
    CallLineData(
        fname: "กองกำกับการสายตรวจ",
        name: "แจ้งเหตุด่วน เหตุร้าย",
        phone: "191",
        image: "img1.png"),
    CallLineData(
        fname: "ศูนย์วิทยุพระราม",
        name: "แจ้งเหตุเพลิงไหม้",
        phone: "199",
        image: "img2.png"),
    CallLineData(
        fname: "กรมทางหลวงชนบท",
        name: "ศูนย์ความปลอดภัย",
        phone: "1146",
        image: "img3.png"),
    CallLineData(
        fname: "กองบัญชาการตำรวจท่องเที่ยว",
        name: "สายด่วนตำรวจท่องเที่ยว",
        phone: "1155",
        image: "img4.png"),
    CallLineData(
        fname: "สำนักงานตำรวจแห่งชาติ",
        name: "ศูนย์ปราบปรามการโจรกรรมรถยนต์ รถจักรยานยนต์",
        phone: "1192",
        image: "img5.png"),
    CallLineData(
        fname: "กองบังคับการปราบปราม",
        name: "สายด่วนกองปราบปราม",
        phone: "1195",
        image: "img6.png"),
    CallLineData(
        fname: "กองบัญชาการตำรวจนครบาล",
        name: "ศูนย์แจ้งอุบัติเหตุทางน้ำ",
        phone: "1196",
        image: "img7.png"),
    CallLineData(
        fname: "กรมเจ้าท่า",
        name: "ศูนย์ปลอดภัยทางน้ำ",
        phone: "1199",
        image: "img8.png"),
    CallLineData(
        fname: "กองอำนวยการรักษาความมั่นคงภายในราชอาณาจักร",
        name: "ศูนย์ กอ.รมน",
        phone: "1374",
        image: "img9.png"),
    CallLineData(
        fname: "กรมควบคุมมลพิษ",
        name: "ศูนย์สนับสนุนการปฏิบัติการฉุกเฉินสารเคมี",
        phone: "1650",
        image: "img10.png"),
    CallLineData(
        fname: "กรมป้องกันและบรรเทาสาธารณภัย",
        name: "ศูนย์ อปพร.",
        phone: "1784",
        image: "img11.png"),
    CallLineData(
        fname: "กองบังคับการตำรวจทางหลวง",
        name: "ตำรวจทางหลวง",
        phone: "1193",
        image: "img86.png"),
    CallLineData(
        fname: "ศูนย์ควบคุมและสั่งการจราจร",
        name: "บก.02",
        phone: "1197",
        image: "img87.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            FontAwesomeIcons.circleChevronLeft,
            size: 25.0,
          ),
        ),
        title: Text(
          "List Number",
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue[60],
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.green[200],
        ),
        itemCount: _callLineData.length,
        itemBuilder: (context, index) {
          return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailUI(
                        fname: _callLineData[index].fname,
                        name: _callLineData[index].name,
                        phone: _callLineData[index].phone,
                        image: _callLineData[index].image,
                      );
                    },
                  ),
                );
              },
              title: Text(
                _callLineData[index].name,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                _callLineData[index].phone,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Image.asset(
                'assets/images/' + _callLineData[index].image,
                width: 80.0,
              ),
              trailing: Icon(
                FontAwesomeIcons.phone,
                size: 20.0,
                color: Colors.red,
              ));
        },
      ),
    );
  }
}
