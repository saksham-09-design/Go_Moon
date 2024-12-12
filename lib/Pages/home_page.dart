import 'package:flutter/material.dart';
import 'package:go_moon/widgets/dropdown_buttons.dart';

class HomePage extends StatelessWidget {
  late double _deviceWidth, _deviceHeight;

  HomePage(Key? key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _moonText(),
              _stationDropdown(),
              _travellerCount(),
              _ticketType(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _moonText() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w800,
        fontSize: 70,
      ),
    );
  }

  Widget _moonImage() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("./assets/images/moon.png"),
        ),
      ),
    );
  }

  Widget _stationDropdown() {
    return DropdownButtons(
      values: const [
        'India Space Station',
        'Spacex Space Station',
        'Nasa Space Station',
      ],
      widgetWidth: _deviceWidth,
    );
  }

  Widget _travellerCount() {
    return DropdownButtons(
      values: const [
        '1',
        '2',
        '3',
        '4',
        '5',
      ],
      widgetWidth: _deviceWidth * 0.45,
    );
  }

  Widget _ticketType() {
    return DropdownButtons(
      values: const [
        'Economy',
        'Business',
        'General',
      ],
      widgetWidth: _deviceWidth * 0.45,
    );
  }
}
