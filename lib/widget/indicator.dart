import 'package:flutter/material.dart';

class IndicatorMenu extends StatelessWidget {
  final String image;
  final String judul;
  final String suhu;
  const IndicatorMenu({
    Key? key,
    required this.image,
    required this.judul,
    required this.suhu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 92,
      width: 92,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 5),
            height: 50,
            width: 50,
            child: Image.asset(
              image,
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(judul),
          SizedBox(
            height: 3,
          ),
          Text(suhu),
        ],
      ),
    );
  }
}
