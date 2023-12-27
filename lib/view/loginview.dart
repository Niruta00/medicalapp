import 'package:flutter/material.dart';
import 'package:medicalapp/core/const/appString.dart';
import 'package:medicalapp/core/const/assetspath.dart';
import 'package:medicalapp/core/routes/routes.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff4C4DDC),
      body: Column(
        children: [
          const Expanded(
              flex: 1,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18, top: 58),
                    child: Text(
                      AppString.homeTitle,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              )),
          const Expanded(
              flex: 3, child: Image(image: AssetImage(AssetsPath.homeView))),
          Expanded(
            flex: 3,
            child: Container(
              height: 304,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: [
                    const Text(
                      AppString.homebody,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color(0xff101010)),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        AppString.homedescription,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff878787)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.home);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Container(
                          width: 327,
                          height: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff4C4DDC),
                          ),
                          child: const Center(
                            child: Text(
                              AppString.homebuttontitle,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
