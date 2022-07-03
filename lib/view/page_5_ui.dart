import 'package:emergency_call_thailand/model/call_list.dart';
import 'package:emergency_call_thailand/view/detail_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page5UI extends StatefulWidget {
  const Page5UI({Key? key}) : super(key: key);

  @override
  State<Page5UI> createState() => _Page5UIState();
}

class _Page5UIState extends State<Page5UI> {
  List<CallLineData> _callLineData = [
    CallLineData(
        fname: "กรมป้องกันและบรรเทาสาธารณภัย กระทรวงมหาดไทย",
        name: "ศูนย์เตือนภัยพิบัติแห่งชาติ",
        phone: "192",
        image: "img40.png"),
    CallLineData(
        fname: "สำนักงานเลขาธิการวุฒิสภา",
        name: "สายด่วนวุฒิสภา",
        phone: "1102",
        image: "img41.png"),
    CallLineData(
        fname: "งานปลัดสํานักนายกรัฐมนตรี",
        name: "ศูนย์รับเรื่องราวร้องทุกข์ของรัฐบาล",
        phone: "1111",
        image: "img42.png"),
    CallLineData(
        fname: "กรมศุลกากร",
        name: "สายด่วนกรมศุลกากร",
        phone: "1164",
        image: "img43.png"),
    CallLineData(
        fname: "สำนักงานคณะกรรมการคุ้มครองผู้บริโภค",
        name: "สายด่วนผู้บริโภค",
        phone: "1166",
        image: "img44.png"),
    CallLineData(
        fname: "สำนักงานคณะกรรมการการเลือกตั้ง",
        name: "สายด่วนกรมการเลือกตั้ง",
        phone: "1171",
        image: "img45.png"),
    CallLineData(
        fname: "กรมอุตุนิยมวิทยา",
        name: "ศูนย์บริการข่าวอากาศ",
        phone: "1182",
        image: "img46.png"),
    CallLineData(
        fname: "สำนักงานคณะกรรมการกำกับและส่งเสริมการประกอบธุรกิจประกันภัย",
        name: "สายด่วนประกันภัย",
        phone: "1186",
        image: "img47.png"),
    CallLineData(
        fname: "สำนักงานศาลปกครอง",
        name: "สายด่วนศาลปกครอง",
        phone: "1355",
        image: "img48.png"),
    CallLineData(
        fname: "สถาบันพัฒนาข้าราชการพลเรือน",
        name: "สำนักงาน ก.พ.",
        phone: "1361",
        image: "img49.png"),
    CallLineData(
        fname: "กรมอุทยานแห่งชาติ สัตว์ป่า และพันธุ์พืช",
        name: "ศูนย์สายด่วนพิทักษ์ป่า",
        phone: "1362",
        image: "img50.png"),
    CallLineData(
        fname: "กรมการค้าต่างประเทศ",
        name: "สายด่วนกรมการค้าต่างประเทศ",
        phone: "1385",
        image: "img51.png"),
    CallLineData(
        fname: "กรมชลประทาน",
        name: "สายด่วนกรมชลประทาน",
        phone: "1460",
        image: "img52.png"),
    CallLineData(
        fname: "สำนักงานประกันสังคม",
        name: "สายด่วยประกันสังคม",
        phone: "1506",
        image: "img53.png"),
    CallLineData(
        fname: "สำนักทะเบียนราษฎร์ กรมการปกครอง",
        name: "สายด่วนกรมการปกครอง",
        phone: "1548",
        image: "img54.png"),
    CallLineData(
        fname: "กระทรวงมหาดไทย",
        name: "ศูนย์ดำรงธรรม",
        phone: "1567",
        image: "img55.png"),
    CallLineData(
        fname: "กระทรวงศึกษาธิการ",
        name: "สายด่วนกรมศึกษาธิการ",
        phone: "1579",
        image: "img56.png"),
    CallLineData(
        fname: "กระทรวงพลังงาน",
        name: "สายด่วยพลังงาน",
        phone: "1649",
        image: "img57.png"),
    CallLineData(
        fname: "การท่องเที่ยวแห่งประเทศไทย",
        name: "สายด่วนททท.",
        phone: "1672",
        image: "img58.png"),
    CallLineData(
        fname: "สำนักงานผู้ตรวจการแผ่นดินรัฐสภา",
        name: "สายด่วนผู้ตรวจการแผ่นดิน",
        phone: "1676",
        image: "img59.png"),
    CallLineData(
        fname: "กรมสวัสดิการและคุ้มครองแรงงาน",
        name: "สายด่วนแรงงาน",
        phone: "1694",
        image: "img60.png"),
    CallLineData(
        fname: "กระทรวงการคลัง",
        name: "สายด่วนกรมการคลัง",
        phone: "1689",
        image: "img61.png"),
    CallLineData(
        fname: "กรมพัฒนาฝีมือแรงงาน",
        name: "สายด่วนกรมพัฒนาฝีมือแรงงาน",
        phone: "1695",
        image: "img62.png"),
    CallLineData(
        fname: "กรมสรรพสามิต",
        name: "สายด่วนกรมสรรพสามิต",
        phone: "1713",
        image: "img63.png"),
    CallLineData(
        fname: "กระทรวงวัฒนธรรม",
        name: "สายด่วนกรมวัฒนธรรม",
        phone: "1765",
        image: "img64.png"),
    CallLineData(
        fname: "กรมพัฒนาธุรกิจการค้า",
        name: "สายด่วนกรมพัฒนาธุรกิจการค้า",
        phone: "1767",
        image: "img65.png"),
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
