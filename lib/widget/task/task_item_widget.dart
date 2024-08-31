import 'package:flutter/material.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: ListTile(
        leading: Container(
          height: 44,
          width: 6,
          color: theme.primaryColor,
        ),
        title:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            "Play basket ball",
            style: theme.textTheme.titleMedium
                ?.copyWith(color: theme.primaryColor),
          ),
          SizedBox(
            height: 10,
          ),
          Row(children: [
            Icon(
              Icons.alarm_on_outlined,
              size: 23,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "10:48 PM",
              style: theme.textTheme.bodySmall
                  ?.copyWith(fontWeight: FontWeight.normal),
            ),
          ]),
        ]),
        trailing: Container(
          decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(20)),
          width: 50,
          height: 30,
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
