import 'package:audis_home_page/utils/style.dart';
import 'package:flutter/material.dart';

class TimeBox extends StatelessWidget {
  const TimeBox({
    super.key,
    required this.width,
    required this.time,
  });

  final double width;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 2,
            decoration: BoxDecoration(
              color: Style.primaryColor,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: width / 20),
          decoration: BoxDecoration(
            color: Style.primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            time,
            style: TextStyle(
              color: Style.accentColor,
              fontFamily: 'Vazir',
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 2,
            decoration: BoxDecoration(
              color: Style.primaryColor,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
      ],
    );
  }
}

