import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  final String title;
  final String value;

  final String body;
  final String? images;
  final String? icon;

  const HomeContainer(
      {super.key,
      required this.title,
      required this.body,
      required this.images,
      required this.value,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 153,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          children: [
            Image(
              image: AssetImage(images!),
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      Text(
                        body,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff878787)),
                      )
                    ],
                  ),
                  Image(image: AssetImage(icon!)),
                  Text(
                    value,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 12),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
