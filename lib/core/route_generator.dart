import 'package:flutter/material.dart';
import 'package:to_do_app/core/route_name.dart';
import 'package:to_do_app/widget/lay_out/lay_out.dart';
import 'package:to_do_app/widget/login/login.dart';
import 'package:to_do_app/widget/regester/regester.dart';
import 'package:to_do_app/widget/setting/setting.dart';
import 'package:to_do_app/widget/splash/splash.dart';
import 'package:to_do_app/widget/task/addtaskbottomsheet.dart';
import 'package:to_do_app/widget/task/task_item_widget.dart';
import 'package:to_do_app/widget/task/task_view.dart';

class RouteGenerator {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.initial:
        return MaterialPageRoute(
            builder: (context) => Splash(), settings: settings);

      case RouteNames.layOut:
        return MaterialPageRoute(
            builder: (context) => LayOut(), settings: settings);

      case RouteNames.login:
        return MaterialPageRoute(
            builder: (context) => Login(), settings: settings);

      case RouteNames.regester:
        return MaterialPageRoute(
            builder: (context) => Regester(), settings: settings);

      case RouteNames.addTaskBottomSheet:
        return MaterialPageRoute(
            builder: (context) => Addtaskbottomsheet(), settings: settings);

      case RouteNames.TaskView:
        return MaterialPageRoute(
            builder: (context) => TaskView(), settings: settings);

      case RouteNames.Setting:
        return MaterialPageRoute(
            builder: (context) => Setting(), settings: settings);

      case RouteNames.TaskItemWidget:
        return MaterialPageRoute(
            builder: (context) => TaskItemWidget(), settings: settings);

      default:
        return MaterialPageRoute(
          builder: (context) => Splash(),
        );
    }
  }
}
