import 'package:flutter/material.dart';

import '../Utils/color.dart';

class CustomSuugestion extends StatefulWidget {
  const CustomSuugestion({super.key});

  @override
  State<CustomSuugestion> createState() => _CustomSuugestionState();
}

class _CustomSuugestionState extends State<CustomSuugestion> {
  List<Map<String,dynamic>>suggestionList=[
    {
      "image":"assets/img/tenminite.png",
      "title":"টেন মিনিট স্কুল"
    },
    {
      "image":"assets/img/toffee.png",
      "title":"টফি"
    },
    {
      "image":"assets/img/shikho.png",
      "title":"শিখো "
    },
    {
      "image":"assets/img/gamemasster.png",
      "title":"গেমমাস্টার "
    },
    {
      "image":"assets/img/quizgiri_logo.png",
      "title":"QuiZGril"
    },
    {
      "image":"assets/img/medha.png",
      "title":"মেধা"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color:Colors.grey.shade300)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("সাজেশন",
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
                ],
              ),
            ),
            Divider(height: 5,thickness: 0.5,color: Colors.grey.shade500,),
            SizedBox(
              height: 100,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: suggestionList.length,
                itemBuilder: (context, index) {
                  final data=suggestionList[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Image.asset(data["image"],height: 60,width: 60,),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(data["title"],
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "SolaimanLipi",
                          ),),
                      )
                    ],
                  );
                },),
            )
          ],
        ),
      ),
    );
  }
}
