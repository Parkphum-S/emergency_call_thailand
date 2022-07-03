import 'package:emergency_call_thailand/model/call_list.dart';
import 'package:emergency_call_thailand/view/detail_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page7UI extends StatefulWidget {
  const Page7UI({Key? key}) : super(key: key);

  @override
  State<Page7UI> createState() => _Page7UIState();
}

class _Page7UIState extends State<Page7UI> {
  List<CallLineData> _callLineData = [
    CallLineData(
        fname: "องค์การขนส่งมวลชนกรุงเทพ",
        name: "สายด่วนขสมก.",
        phone: "1384",
        image: "img88.png"),
    CallLineData(
        fname: "บริษัท ขนส่ง จำกัดว",
        name: "สายด่วน บขส.",
        phone: "1490",
        image: "img89.png"),
    CallLineData(
        fname: "การทางพิเศษแห่งประเทศไทย",
        name: "ศูนย์ควบคุมระบบการจราจรบนทางด่วน",
        phone: "1543",
        image: "img90.png"),
    CallLineData(
        fname: "กรมการขนส่งทางบก",
        name: "สายด่วนกรมการขนส่งทางบก",
        phone: "1584",
        image: "img91.png"),
    CallLineData(
        fname: "ศูนย์บริการประชาชน กรมทางหลวง",
        name: "สายด่วนกรมทางหลวง",
        phone: "1586",
        image: "img92.png"),
    CallLineData(
        fname: "การรถไฟแห่งประเทศไทย",
        name: "สายด่วย รฟท.",
        phone: "1690",
        image: "img93.png"),
    CallLineData(
        fname: " ",
        name: "บริษัท สายการบินนกแอร์ จำกัด",
        phone: "1318",
        image: "img94.png"),
    CallLineData(
        fname: " ",
        name: "บริษัท การบินไทย จำกัด (มหาชน)",
        phone: "1566",
        image: "img95.png"),
    CallLineData(
        fname: " ",
        name: "บริษัท บางกอก แอร์เวย์ จำกัด",
        phone: "1771",
        image: "img96.png"),
    CallLineData(
        fname: " ",
        name: "สหกรณ์แท็กซี่สยาม",
        phone: "1661",
        image: "img97.png"),
    CallLineData(
        fname: "ศูนย์วิทยุTAXI-RADIO",
        name: "TAXI-RADIO",
        phone: "1681",
        image: "img98.png"),
    CallLineData(
        fname: " ",
        name: "บริษัท รถไฟฟ้า ร.ฟ.ท. จำกัด",
        phone: "0-2131-5700",
        image: "img99.png"),
    CallLineData(
        fname: " ",
        name: "ท่าอากาศยานสุวรรณภูมิ",
        phone: "0-2131-9950",
        image: "img100.png"),
    CallLineData(
        fname: " ",
        name: "การท่าเรือแห่งประเทศไทย",
        phone: "0-2269-3190",
        image: "img101.png"),
    CallLineData(
        fname: " ",
        name: "กรมการบินพลเรือน",
        phone: "0-2286-0506",
        image: "img102.png"),
    CallLineData(
        fname: " ",
        name: "การรถไฟฟ้าขนส่งมวลชนแห่งประเทศไทย",
        phone: "0-2938-3666",
        image: "img103.png"),
    CallLineData(
        fname: " ",
        name: "บริษัท วิทยุการบินแห่งประเทศไทย จำกัด",
        phone: "0-2285-9037",
        image: "img104.png"),
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
