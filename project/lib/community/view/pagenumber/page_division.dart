import 'package:flutter/material.dart';
import 'package:team5/database/data_controller.dart';

class Page_Division extends StatefulWidget {
  final Map<String, Widget> panel;
  Page_Division(this.panel);
  @override
  Page_number createState() => Page_number();
}

class Page_number extends State<Page_Division> {
  Map<String, Color> num_active = {};
  int page_num = 1;
  int increase_num = 0;
  Map<String, Widget> num_but = {};
  Data_Control data_control = Data_Control();
  Map<int, Map<String, Widget>> division_panel = {};

  @override
  void initState() {
    super.initState();
    page_division();
    num_button();
  }

  void page_division() {
    division_panel = {};
    int page = 1;
    division_panel[page] = {};
    widget.panel.forEach((key, value) {
      division_panel[page]![key] = value;
      if (division_panel[page]!.length == 5) {
        page++;
        division_panel[page] = {};
        num_active['num_$page'] = Color(0xFF999999);
      }
    });
    num_active['num_1'] = Color(0xFF0059FF);
  }

  void but_color_change(String id) {
    num_active.forEach((key, value) {
      num_active[key] = Color(0xFF999999);
    });
    num_active[id] = Color(0xFF0059FF);
    num_button();
  }

  void num_button() {
    for (int i = 1; i <= num_active.length; i++) {
      num_but['num_$i'] = GestureDetector(
        onTap: () {
          setState(() {
            page_num = i;
          });
          but_color_change('num_$i');
        },
        child: Container(
          height: 16,
          child: Text(
            '$i',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: num_active['num_$i'],
                height: 0.12,
                letterSpacing: 30),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          width: 328,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: division_panel[page_num]!.values.toList()),
        ),
        // Page_Number(docs_panel),
        Container(
          height: 18,
          margin: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            num_active.length > 5
                ? GestureDetector(
                    onTap: () {},
                    child: Text(
                      '<',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF0059FF),
                          height: 0.12,
                          letterSpacing: 30),
                    ),
                  )
                : SizedBox(),
            Row(
              children: num_but.values.toList(),
            ),
            num_active.length > 5
                ? GestureDetector(
                    onTap: () {},
                    child: Text(
                      '>',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF0059FF),
                          height: 0.12,
                          letterSpacing: 30),
                    ),
                  )
                : SizedBox(),
          ]),
        )
      ]),
    );
  }
}
