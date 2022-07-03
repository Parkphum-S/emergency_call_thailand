import 'package:emergency_call_thailand/model/call_list.dart';
import 'package:emergency_call_thailand/view/detail_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page8UI extends StatefulWidget {
  const Page8UI({Key? key}) : super(key: key);

  @override
  State<Page8UI> createState() => _Page8UIState();
}

class _Page8UIState extends State<Page8UI> {
  List<CallLineData> _callLineData = [
    CallLineData(
        fname: " ",
        name: "สมาคมเสริมสร้างครอบครัว",
        phone: "1761",
        image: "img105.png"),
    CallLineData(
        fname: "สำนักงานตำรวจแห่งชาติ",
        name: "ศูนย์พิทักษ์เด็ก เยาวชนและสตรี",
        phone: "1192",
        image: "img106.png"),
    CallLineData(
        fname: "สำนักนโยบายพัฒนาระบบการเงินภาคประชาชน",
        name: "ศูนย์รับแจ้งการเงินนอกระบบ",
        phone: "1359",
        image: "img107.png"),
    CallLineData(
        fname: " ",
        name: "สายด่วนเมาไม่ขับ",
        phone: "1155",
        image: "img108.png"),
    CallLineData(
        fname: " ",
        name: "สถานีวิทยุ จส.100",
        phone: "1137",
        image: "img109.png"),
    CallLineData(
        fname: " ",
        name: "สถานีวิทยุ สวพ.91",
        phone: "1644",
        image: "img110.png"),
    CallLineData(
        fname: " ",
        name: "สถานีวิทยุร่วมด้วยช่วยกัน",
        phone: "1677",
        image: "img111.png"),
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
