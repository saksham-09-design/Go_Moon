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
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: _moonImage(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _moonText(),
                  _bookRide(),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: _astroImage(),
              ),
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

  Widget _astroImage() {
    return Container(
      height: _deviceHeight * .40,
      width: _deviceHeight * .40,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/astro.png"),
        ),
      ),
    );
  }

  Widget _moonImage() {
    return Container(
      height: _deviceHeight * .90,
      width: _deviceWidth * .90,
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

  Widget _bookRide() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      height: _deviceHeight * 0.30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _stationDropdown(),
          _travellerInfo(),
          _bookRideButton(),
        ],
      ),
    );
  }

  Widget _bookRideButton() {
    return Container(
      width: _deviceWidth * .90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book a Ride!",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
    );
  }

  Widget _travellerInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DropdownButtons(
          values: const [
            '1',
            '2',
            '3',
            '4',
            '5',
          ],
          widgetWidth: _deviceWidth * 0.42,
        ),
        DropdownButtons(
          values: const [
            'Economy',
            'Business',
            'General',
          ],
          widgetWidth: _deviceWidth * 0.42,
        ),
      ],
    );
  }
}
