import 'package:flutter/material.dart';
import 'package:medicalapp/core/const/assetspath.dart';
import 'package:medicalapp/core/routes/routes.dart';
import 'package:medicalapp/core/themes/appcolor.dart';
import 'package:medicalapp/utils/homecontainer/home_list_container.dart';
import 'package:medicalapp/utils/homecontainer/homerect_container.dart';
// ignore: unused_import
import 'package:medicalapp/utils/utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 215,
              // width: 375,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: AppColors.primaryColor),
              child: Padding(
                padding: const EdgeInsets.only(left: 12, top: 38),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(AssetsPath.profile),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Добро пожаловать  🎉",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Афанасий Пупкин",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 45),
                            child: Image(
                                image: AssetImage(AssetsPath.notification)))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          suffixIcon: Image.asset(
                            AssetsPath.txtfldicon,
                            color: Colors.white,
                          ),
                          hintText: 'Найти доктора. . .',
                          hintStyle: const TextStyle(
                              color: Color(0xffEDEDED),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Твои симптомы ❓",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Routes.detail);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 37,
                    width: 102,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "🤧 Чихание  ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 37,
                    width: 137,
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "🤧 Чихание  ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffA0A6B1)),
                      ),
                    ),
                  ),
                  Container(
                    height: 37,
                    width: 102,
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "🤧 Чихание  ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffA0A6B1)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Избранные врачи",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text(
                    "Посмотреть всех",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: AppColors.primaryColor),
                  )
                ],
              ),
            ),
            const Row(
              children: [
                Expanded(
                    child: HomeContainer(
                  title: "Др. Айкызы",
                  body: "Диетолог ",
                  images: AssetsPath.rectImg1,
                  value: "4.5",
                  icon: AssetsPath.star,
                )),
                Expanded(
                    child: HomeContainer(
                  title: "Др. Бирма",
                  body: "Диетолог ",
                  images: AssetsPath.rectImg2,
                  value: "4.5",
                  icon: AssetsPath.star,
                )),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Лучший доктор",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text(
                    "Посмотреть всех",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: AppColors.primaryColor),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: HomeListContainer(
                image: AssetsPath.listimg1,
                title: "Др. Алмаз Тогыз",
                body: "Кардиолог | Ведущий врач",
                value: "4.7 (7.932 отзывов)",
                icon: AssetsPath.star,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: HomeListContainer(
                image: AssetsPath.listimg2,
                title: "Dr. Crysti Denie",
                body: "Nutritionist | Mars Hospital",
                value: "4.7 (7.932 отзывов)",
                icon: AssetsPath.star,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
