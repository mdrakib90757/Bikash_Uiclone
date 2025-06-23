
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Utils/color.dart';

class OthersServices extends StatefulWidget {
  const OthersServices({super.key});

  @override
  State<OthersServices> createState() => _OthersServicesState();
}

class _OthersServicesState extends State<OthersServices> {
  final List<Map<String, String>> menuItems = [
    {"image": "assets/img/ticket.png", "title": "টিকেট ও ট্রাভেল"},
    {"image": "assets/img/2.png", "title": "রিচার্জ প্ল্যান"},
    {"image": "assets/img/binimoy-removebg-preview.png", "title": "বিনিময়"},
    {"image": "assets/img/insurance (2).png", "title": "ইন্স্যুরেন্স প্ল্যান"},
    {"image": "assets/img/increase.png", "title": "বিডি ট্যাক্স"},
    {"image": "assets/img/shopping-cart.png", "title": "শপিং"},
    {"image": "assets/img/gamepad.png", "title": "গেমস"},
    {"image": "assets/img/subscription-models.png", "title": "সাবস্ক্রিপশন"},
    {"image": "assets/img/nabawi-mosque.png", "title": "দ্বীন"},
    {"image": "assets/img/economy.png", "title": " বিনিয়োগ শিক্ষা"},


  ];

  late  PageController pageController=PageController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController= new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade400)
        ),
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("অনন্যা সেবাসমূহ",style: TextStyle(
                        color: Colors.black.withOpacity(0.9),
                        fontSize: 13,
                        fontFamily: "SolaimanLipi"
                    ),),
                  ],
                ),
              ),
              Divider(height: 5,thickness: 0.5,color: Colors.grey.shade500,),
              SizedBox(
                  height: 200,
                  child: PageView(
                    controller: pageController,
                    children: [
                      Padding(padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:menuItems.sublist(0,4).map((item){
                              return Column(
                                children: [
                                  Image.asset(item["image"]!, height: 50, width: 50),
                                  SizedBox(height: 5),
                                  Text(item["title"]!, style: TextStyle(fontSize: 12)),
                                ],
                              );
                            }).toList(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: menuItems.sublist(4,8).map((item){
                              return Column(
                                children: [
                                  Image.asset(item["image"]!, height: 50, width: 50),
                                  SizedBox(height: 5),
                                  Text(item["title"]!, style: TextStyle(fontSize: 12)),
                                ],
                              );
                            }).toList(),
                          )
                        ],
                      ),
                      ),
                      Padding(padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: menuItems.sublist(8).map((item){
                                return Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: Image.asset(item["image"]!, height: 50, width: 50),
                                    ),
                                    SizedBox(height: 5),
                                    Text(item["title"]!, style: TextStyle(fontSize: 12)),
                                  ],
                                );
                              }).toList(),
                            ),
                           

                          ],
                        ),
                      ),

                    ],
                  )
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SmoothPageIndicator(
                  controller: pageController,
                  count:  2,
                  axisDirection: Axis.horizontal,
                  effect:  SlideEffect(
                      spacing:  8.0,
                      radius:  4.0,
                      dotWidth:  10.0,
                      dotHeight:  10.0,
                      dotColor:  AppColor().primaryColor.withOpacity(0.2),
                      activeDotColor: AppColor().primaryColor
                  ),
                ),
              )

            ]
        ),
      ),
    );

  }
}
