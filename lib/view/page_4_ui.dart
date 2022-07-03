import 'package:emergency_call_thailand/model/call_list.dart';
import 'package:emergency_call_thailand/view/detail_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page4UI extends StatefulWidget {
  const Page4UI({Key? key}) : super(key: key);

  @override
  State<Page4UI> createState() => _Page4UIState();
}

class _Page4UIState extends State<Page4UI> {
  List<CallLineData> _callLineData = [
    CallLineData(
        fname: "การไฟฟ้าส่วนภูมิภาค",
        name: "สายด่วนการไฟฟ้าส่วนภูมิภาค",
        phone: "1129",
        image: "img29.png"),
    CallLineData(
        fname: "การไฟฟ้านครหลวง",
        name: "สายด่วนการไฟฟ้านครหลวง",
        phone: "1130",
        image: "img30.png"),
    CallLineData(
        fname: "การประปานครหลวง",
        name: "สายด่วนการประปานครหลวง",
        phone: "1125",
        image: "img31.png"),
    CallLineData(
        fname: "การประปาส่วนภูมิภาค",
        name: "สายด่วนการประปาส่วนภูมิภาค",
        phone: "1662",
        image: "img32.png"),
    CallLineData(
        fname: "กรมชลประทาน",
        name: "ชลประทานบริการประชาชน",
        phone: "1460",
        image: "img33.png"),
    CallLineData(
        fname: "บริษัท โทรคมนาคมแห่งชาติ จำกัด (มหาชน)",
        name: "NT Call center",
        phone: "1888",
        image: "img34.png"),
    CallLineData(
        fname: "บริษัท แอดวานซ์ อินโฟร์ เซอร์วิส จำกัด",
        name: "AIS",
        phone: "1175",
        image: "img35.png"),
    CallLineData(
        fname: "บริษัท ทรู คอร์ปอเรชั่น จำกัด (มหาชน)",
        name: "TRUE",
        phone: "1242",
        image: "img36.png"),
    CallLineData(
        fname: "บริษัท โทเทิ่ล แอ็คเซ็ส คอมมูนิเคชั่น จำกัด ",
        name: "DTAC",
        phone: "1678",
        image: "img37.png"),
    CallLineData(
        fname: "บริษัท สามารถ อินโฟ มีเดีย จำกัด",
        name: "BUG 1113",
        phone: "1113",
        image: "img38.png"),
    CallLineData(
        fname: "บริษัท ไปรษณีย์ไทย จำกัด",
        name: "สายด่วนไปรษณีย์ไทย",
        phone: "1545",
        image: "img39.png"),
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
