
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/color.dart';

class Balancebotton extends StatelessWidget {
  const Balancebotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 2,),
          CircleAvatar(
            backgroundColor: AppColor().primaryColor,
            backgroundImage: AssetImage("assets/image/currency.png"),
            radius: 10,
          ),
          SizedBox(width: 10,),
          Text("ব্যালেন্স দেখুন",style: TextStyle(
            fontFamily: "SolaimanLipi",
            fontSize: 12,
            color: AppColor().primaryColor
          ),),
          SizedBox(width: 30,)

        ],
      ),
    );
  }
}