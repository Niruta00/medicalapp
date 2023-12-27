import 'package:flutter/material.dart';
import 'package:medicalapp/core/const/assetspath.dart';

class HomeListContainer extends StatelessWidget {
  final String? image;
  final String? icon;

  final String title;
  final String value;

  final String body;

  const HomeListContainer({
    super.key,
    required this.image,
    required this.title,
    required this.body,
    this.icon,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 327, // Specify a specific width
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Row(
          children: [
            Image(
              image: AssetImage(image!),
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 48),
                      Image(image: AssetImage(AssetsPath.love)),
                    ],
                  ),
                  Text(
                    body,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff878787),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(image: AssetImage(icon!)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          value,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
