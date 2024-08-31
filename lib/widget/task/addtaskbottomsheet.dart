import 'package:flutter/material.dart';
import 'package:to_do_app/core/application_theme.dart';
import 'package:intl/intl.dart';

class Addtaskbottomsheet extends StatefulWidget {
  Addtaskbottomsheet({super.key});

  @override
  State<Addtaskbottomsheet> createState() => _AddtaskbottomsheetState();
}

class _AddtaskbottomsheetState extends State<Addtaskbottomsheet> {
  var titleController = TextEditingController();

  var descriptionController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add New Task",
              style: theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: titleController,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Please enter Title";
                }
                return null;
              },
              decoration: InputDecoration(
                  border: UnderlineInputBorder(borderSide: BorderSide()),
                  hintText: "Enter your task",
                  hintStyle: theme.textTheme.bodyMedium),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: descriptionController,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Please enter Description";
                }
                return null;
              },
              decoration: InputDecoration(
                  border: UnderlineInputBorder(borderSide: BorderSide()),
                  hintText: "Enter task description",
                  hintStyle: theme.textTheme.bodyMedium),
              maxLines: 3,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Select Time",
              style: theme.textTheme.bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                getSelectedDate();
              },
              child: Text(
                DateFormat("dd MMM yyyy").format(selectedDate),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            FilledButton(
              style: FilledButton.styleFrom(
                  backgroundColor: theme.primaryColor, shape: StadiumBorder()),
              onPressed: () {},
              child: Text("Save"),
            )
          ],
        ),
      ),
    );
  }

  getSelectedDate() async {
    var currentDate = await showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
    if (currentDate != null) {
      setState(() {
        selectedDate = currentDate;
      });
    } else {
      return null;
    }
  }
}
