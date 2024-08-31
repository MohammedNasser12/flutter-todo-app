import 'package:flutter/material.dart';
import 'package:horizontal_week_calendar/horizontal_week_calendar.dart';
import 'package:to_do_app/core/application_theme.dart';
import 'package:to_do_app/core/route_name.dart';
import 'package:to_do_app/widget/setting/setting.dart';
import 'package:to_do_app/widget/task/addtaskbottomsheet.dart';
import 'package:to_do_app/widget/task/task_view.dart';

class LayOut extends StatefulWidget {
  LayOut({super.key});

  @override
  State<LayOut> createState() => _LayOutState();
}

class _LayOutState extends State<LayOut> {
  int currentTap = 0;
  List<Widget> screens = [TaskView(), Setting()];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: screens[currentTap],
      bottomNavigationBar: BottomAppBar(
        height: 85,
        // elevation: 0,
        notchMargin: 12,
        shape: CircularNotchedRectangle(),
        color: Colors.transparent,
        padding: EdgeInsets.zero,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          currentIndex: currentTap,
          onTap: (value) {
            currentTap = value;
            setState(() {});
          },
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage("assets/images/Icon awesome-list.png")),
                label: "tasks"),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/settings_icn.png")),
              label: "settings",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Addtaskbottomsheet(),
          );
        },
        shape: CircleBorder(),
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
