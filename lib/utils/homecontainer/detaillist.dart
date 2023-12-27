import 'package:flutter/material.dart';

class DetailList extends StatelessWidget {
  final String? image;
  final String? value;
  final String? des;

  const DetailList({super.key, this.image, this.value, this.des});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94,
      width: 62,
      child: Column(
        children: [
          Image.asset(image!),
          Text(
            value!,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            des!,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xff878787)),
          )
        ],
      ),
    );
  }
}
