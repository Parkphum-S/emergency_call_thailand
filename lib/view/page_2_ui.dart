import 'package:emergency_call_thailand/model/call_list.dart';
import 'package:emergency_call_thailand/view/detail_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page2UI extends StatefulWidget {
  const Page2UI({Key? key}) : super(key: key);

  @override
  State<Page2UI> createState() => _Page2UIState();
}

class _Page2UIState extends State<Page2UI> {
  List<CallLineData> _callLineData = [
    CallLineData(
        fname: "กระทรวงการพัฒนาสังคมและความมั่นคงของมนุษย์",
        name: "ศูนย์ประชาบดี",
        phone: "1300",
        image: "img12.png"),
    CallLineData(
        fname: "สำนักงานปลัดกระทรวงคมนาคม",
        name: "ศูนย์ปลอดภัยคมนาคม",
        phone: "1356",
        image: "img13.png"),
    CallLineData(
        fname: "โรงพยาบาลวชิรพยาบาล",
        name: "หน่วยแพทย์กู้ชีวิตวชิรพยาบาล",
        phone: "1554",
        image: "img14.png"),
    CallLineData(
        fname: " ",
        name: "มูลนิธิร่วมกตัญญู",
        phone: "0-2751-0944",
        image: "img15.png"),
    CallLineData(
        fname: "สำนักการแพทย์ กรุงเทพมหานคร",
        name: "ศูนย์เอราวัณ",
        phone: "1646",
        image: "img16.png"),
    CallLineData(
        fname: "มูลนิธิโรงพยาบาลราชวิถี",
        name: "ศูนย์กู้ชีพนเรนทร",
        phone: "0-2354-8222",
        image: "img17.png"),
    CallLineData(
        fname: " ",
        name: "สถาบันการแพทย์ฉุกเฉินแห่งชาติ",
        phone: "1196",
        image: "img18.png"),
    CallLineData(
        fname: " ",
        name: "มูลนิธิป่อเต็กตึ๊ง",
        phone: "1418",
        image: "img19.png"),
    CallLineData(
        fname: " ",
        name: "ศูนย์เตือนภัยพิบัติแห่งชาติ",
        phone: "1860",
        image: "img20.png"),
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
