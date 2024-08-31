import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do_app/widget/task/task_item_widget.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  final EasyInfiniteDateTimelineController _controller =
      EasyInfiniteDateTimelineController();

  var _focusDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 90),
          child: Stack(clipBehavior: Clip.none, children: [
            Container(
              padding: EdgeInsets.all(30),
              height: mediaQuery.size.height * .22,
              width: mediaQuery.size.width,
              color: theme.primaryColor,
              child: Text(
                "TO Do List",
                style:
                    theme.textTheme.titleMedium?.copyWith(color: Colors.white),
              ),
            ),
            Positioned(
              top: 115,
              child: SizedBox(
                width: mediaQuery.size.width,
                child: EasyInfiniteDateTimeLine(
                  controller: _controller,
                  firstDate: DateTime(2024),
                  focusDate: _focusDate,
                  lastDate: DateTime.now().add(Duration(days: 365)),
                  onDateChange: (selectedDate) {
                    setState(() {
                      _focusDate = selectedDate;
                    });
                  },
                  dayProps: EasyDayProps(
                      activeDayDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      activeDayNumStyle: theme.textTheme.bodySmall,
                      activeDayStrStyle: theme.textTheme.bodySmall,
                      activeMothStrStyle: theme.textTheme.bodySmall,
                      inactiveDayDecoration: BoxDecoration(
                        color: Colors.white.withOpacity(.6),
                      ),
                      inactiveDayStyle: DayStyle(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white.withOpacity(.6))),
                      inactiveDayNumStyle: theme.textTheme.bodySmall
                          ?.copyWith(color: theme.primaryColor),
                      inactiveMothStrStyle: theme.textTheme.bodySmall
                          ?.copyWith(color: theme.primaryColor),
                      inactiveDayStrStyle: theme.textTheme.bodySmall
                          ?.copyWith(color: theme.primaryColor),
                      todayNumStyle: theme.textTheme.bodySmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                      todayMonthStrStyle: theme.textTheme.bodySmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                      todayStrStyle: theme.textTheme.bodySmall
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  showTimelineHeader: false,
                ),
              ),
            ),
          ]),
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) => TaskItemWidget(),
          itemCount: 3,
        ))
      ],
    );
  }
}
