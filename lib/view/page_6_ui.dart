import 'package:emergency_call_thailand/model/call_list.dart';
import 'package:emergency_call_thailand/view/detail_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page6UI extends StatefulWidget {
  const Page6UI({Key? key}) : super(key: key);

  @override
  State<Page6UI> createState() => _Page6UIState();
}

class _Page6UIState extends State<Page6UI> {
  List<CallLineData> _callLineData = [
    CallLineData(
        fname: " ",
        name: "ธนาคารแห่งประเทศไทย",
        phone: "1213",
        image: "img66.png"),
    CallLineData(
        fname: " ", name: "ธนาคารออมสิน", phone: "1115", image: "img67.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคารอิสลาม แห่งประเทศไทย",
        phone: "1320",
        image: "img68.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคารพัฒนาวิสาหกิจขนาดกลางและขนาดย่อมแห่งประเทศไทย",
        phone: "1357",
        image: "img69.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคารกสิกรไทย",
        phone: "0-2888-8888",
        image: "img70.png"),
    CallLineData(
        fname: " ", name: "ธนาคารกรุงเทพ", phone: "1333", image: "img71.png"),
    CallLineData(
        fname: " ", name: "ธนาคารกรุงไทย", phone: "1551", image: "img72.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคารกรุงศรีอยุธยา",
        phone: "1572",
        image: "img73.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคารทหารไทยธนชาต",
        phone: "1428",
        image: "img74.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคารซิตี้แบงก์",
        phone: "1588",
        image: "img75.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคารทิสโก้",
        phone: "0-2633-6000",
        image: "img76.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคารเกียรตินาคินภัทร",
        phone: "0-2165-5555",
        image: "img77.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคารสแตนดาร์ด ชาร์เตอร์ (ไทย)",
        phone: "1595",
        image: "img78.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคารซีไอเอ็มบี ไทย",
        phone: "0-2626-7777",
        image: "img79.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคารไทยพาณิชย์",
        phone: "0-2777-7777",
        image: "img80.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคารเพื่อการเกษตร",
        phone: "0-2555-5555",
        image: "img81.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคารอาคารสงเคราะห์",
        phone: "0-2645-9000",
        image: "img82.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคารยูโอบี จำกัด (มหาชน)",
        phone: "0-2285-1555",
        image: "img83.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคาร แห่งประเทศจีน ICBC",
        phone: "0-2629-5588",
        image: "img84.png"),
    CallLineData(
        fname: " ",
        name: "ธนาคารแลนด์ แอนด์ เฮ้าส์",
        phone: "1327",
        image: "img85.png"),
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
