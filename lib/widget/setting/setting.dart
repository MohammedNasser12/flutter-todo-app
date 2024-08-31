import 'dart:core';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  List<String> languge = ["English", "Arabic"];
  List<String> themeMode = ["Light", "Dark"];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Container(
        padding: EdgeInsets.all(40),
        height: mediaQuery.size.height * .22,
        width: mediaQuery.size.width,
        decoration: BoxDecoration(color: theme.primaryColor),
        child: Text(
          "Settings",
          style: theme.textTheme.titleLarge
              ?.copyWith(color: Colors.white, fontSize: 22),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
          "Languge :",
          style: theme.textTheme.bodySmall,
          // textAlign: TextAlign.left,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: CustomDropdown<String>(
          hintText: 'Select Languge',
          items: languge,
          initialItem: languge[0],
          onChanged: (value) {
            log('changing value to: $value');
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
          "Theme :",
          style: theme.textTheme.bodySmall,
          // textAlign: TextAlign.left,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: CustomDropdown<String>(
          hintText: 'Select Theme Mode',
          items: themeMode,
          initialItem: themeMode[0],
          onChanged: (value) {
            log('changing value to: $value');
          },
        ),
      ),
    ]);
  }
}
