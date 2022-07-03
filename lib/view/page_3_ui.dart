import 'package:emergency_call_thailand/model/call_list.dart';
import 'package:emergency_call_thailand/view/detail_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page3UI extends StatefulWidget {
  const Page3UI({Key? key}) : super(key: key);

  @override
  State<Page3UI> createState() => _Page3UIState();
}

class _Page3UIState extends State<Page3UI> {
  List<CallLineData> _callLineData = [
    CallLineData(
        fname: "กรมการแพทย์",
        name: "สายด่วนยาเสพติด",
        phone: "1165",
        image: "img21.png"),
    CallLineData(
        fname: "กรมการแพทย์",
        name: "สายด่วนสุขภาพจิต",
        phone: "1323",
        image: "img22.png"),
    CallLineData(
        fname: "กระทรวงสาธารณสุข",
        name: "สำนักงานหลักประกันสุขภาพแห่งชาติ",
        phone: "1330",
        image: "img23.png"),
    CallLineData(
        fname: "โรงพยาบาลรามาธิบดี",
        name: "ศูนย์พิษวิทยา",
        phone: "1367",
        image: "img24.png"),
    CallLineData(
        fname: "กระทรวงสาธรณสุข",
        name: "สายด่วนองค์การอาหารและยา",
        phone: "1192",
        image: "img25.png"),
    CallLineData(
        fname: "สภากาชาดไทย",
        name: "สำนักงานอาสากาชาด",
        phone: "1665",
        image: "img26.png"),
    CallLineData(
        fname: "สภากาชาดไทย",
        name: "สายด่วนศูนย์รับบริจาคอวัยวะ",
        phone: "1666",
        image: "img27.png"),
    CallLineData(
        fname: "สถาบันมะเร็งแห่งชาติ กรมการแพทย์",
        name: "สายด่วนมะเร็ง",
        phone: "1668",
        image: "img28.png"),
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
