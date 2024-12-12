import 'package:flutter/material.dart';

class DropdownButtons extends StatelessWidget {
  List<String> values;
  double widgetWidth;

  DropdownButtons({required this.values, required this.widgetWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widgetWidth,
      padding: EdgeInsets.symmetric(horizontal: widgetWidth * 0.05),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(63, 63, 63, 1),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color.fromARGB(255, 86, 86, 86),
            width: 1.0,
            style: BorderStyle.solid,
          )),
      child: DropdownButton(
        onChanged: (_) {},
        items: values.map(
          (e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          },
        ).toList(),
        underline: Container(),
        value: values.first,
        dropdownColor: const Color.fromRGBO(63, 63, 63, 1),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
