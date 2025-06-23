

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Utils/color.dart';

class CustomBikashbandle extends StatefulWidget {
  const CustomBikashbandle({super.key});

  @override
  State<CustomBikashbandle> createState() => _CustomBikashbandleState();
}

class _CustomBikashbandleState extends State<CustomBikashbandle> {
  List<Map<String,dynamic>>takaList=[
    {"image":"assets/img/taka (1).png",
      "title":"100 সেন্ড মানি",
      "time":"30 দিন",
      "taka":"249.0",
      "icon":"assets/img/megaphone (1).png",
      "b":"বাঁচবে",
      "image2":"assets/img/1.png",
      "amount2":"100 সেন্ড মানি",
      "amount3":"251"
    },
    {"image":"assets/img/taka (2).png",
      "title":"50 সেন্ড মানি",
      "time":"30 দিন",
      "taka":"149.0",
      "icon":"assets/img/megaphone (1).png",
      "b":"বাঁচবে",
      "image2":"assets/img/1.png",
      "amount2":"50 সেন্ড মানি",
      "amount3":"101"
    },
    {"image":"assets/img/taka (3).png",
      "title":"25 সেন্ড মানি",
      "time":"30 দিন",
      "taka":"94.0",
      "icon":"assets/img/megaphone (1).png",
      "b":"বাঁচবে",
      "image2":"assets/img/1.png",
      "amount2":"25 সেন্ড মানি",
      "amount3":"31"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(

        decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color:Colors.grey.shade300)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("বিকাশ ব্যান্ডেল",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontFamily: "SolaimanLipi",
                        fontSize: 13
                    ),),
                  Text("সব দেখুন",style: TextStyle(
                      color: AppColor().primaryColor,
                      fontFamily: "SolaimanLipi",
                      fontSize: 13
                  ),),

                ],),
            ),
            Divider(height: 5,thickness: 0.5,color: Colors.grey.shade500,),
            SizedBox(
              height: 180,
              child: ListView.builder(
                //physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: takaList.length,
                itemBuilder: (context, index) {
                  final data=takaList[index];
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 190,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 50,
                                  left: 20
                              ),
                              child: Image.asset(data["image"],height: 50,width: 50,),
                            ),
                            SizedBox(width: 10,),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(data["title"],style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700
                                  ),),
                                  Row(
                                    children: [
                                      Text(data["time"]),
                                      SizedBox(width: 110,),
                                      FaIcon(FontAwesomeIcons.bangladeshiTakaSign,
                                        size: 11,color: Colors.black),
                                      Text(data["taka"],style: TextStyle(
                                          color: Colors.black
                                      ),)
                                    ],
                                  ),
                                  Container(
                                    height: 20,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: AppColor().primaryColor,
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Row(
                                        children: [
                                          Image.asset(data["icon"],
                                            color: Colors.white,height: 12,width: 12,),
                                          SizedBox(width: 5,),
                                          Text(data["b"],style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500
                                          ),),
                                          SizedBox(width: 5,),
                                          FaIcon(FontAwesomeIcons.bangladeshiTakaSign,
                                            size: 8,color: Colors.white,),
                                          Text(data["amount3"],style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white
                                          ),)

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )


                          ],),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8,),
                          child: Divider(height: 5,thickness: 0.5,color: Colors.grey.shade400),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8,),
                          child: Row(
                            children: [
                              Image.asset(data["image2"],
                                height: 30,width: 30,),
                              SizedBox(width: 10,),
                              Text(data["amount2"])

                            ],
                          ),
                        )

                      ],
                    ),
                  );
                },),
            ),




          ],
        ),
      ),
    );
  }
}
