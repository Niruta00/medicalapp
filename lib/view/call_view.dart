import 'package:flutter/material.dart';
import 'package:medicalapp/core/const/assetspath.dart';
import 'package:medicalapp/core/routes/routes.dart';
import 'package:medicalapp/core/themes/appcolor.dart';

class CallView extends StatelessWidget {
  const CallView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsPath.detailimg),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 350,
            ),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(AssetsPath.detailimg),
              ),
            ),
            SizedBox(height: 14),
            Text(
              'Др. Бирханова', // Replace with the contact name
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 14),
            Container(
              width: 119,
              height: 26,
              // padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  '19 : 00 минут',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {
                      // Toggle Speaker
                    },
                    icon: Icon(
                      Icons.volume_up_sharp,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.login);
                        // End Call
                      },
                      icon: Icon(
                        Icons.call_end,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        // Toggle Microphone
                      },
                      icon: Icon(
                        Icons.mic,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
