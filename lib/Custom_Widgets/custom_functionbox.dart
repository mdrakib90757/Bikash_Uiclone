import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/color.dart';

class CustomFunctionbox extends StatefulWidget {
  const CustomFunctionbox({super.key});

  @override
  State<CustomFunctionbox> createState() => _CustomFunctionboxState();
}

class _CustomFunctionboxState extends State<CustomFunctionbox> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white10,
            border: Border.all(color: Colors.grey.shade500,width: 0.5),
            borderRadius: BorderRadius.circular(8)

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("আমার বিকাশ",style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontFamily: "SolaimanLipi",
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.tune,color: AppColor().primaryColor,size: 18,),
                      SizedBox(width: 5,),
                      Text("এডিট ",style: TextStyle(
                        fontFamily: "SolaimanLipi",
                        fontSize: 13,
                        color:AppColor().primaryColor,
                      ),),

                    ],),
                ),

              ],),
            Divider(thickness: 0.5,color: Colors.grey.shade500),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20,vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white,
                          child: Image.asset("assets/img/gift-card.png",
                            height: 50,width: 50,
                            color: Colors.amber,),
                        ),
                        SizedBox(height: 5,),
                        Text("মাই অফার",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 12,
                              fontFamily: "SoLaimanLipi"
                          ),),
                        Text("দেখতে ট্যাপ করুন",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 15,
                              fontFamily: "SoLaimanLipi"
                          ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color:Colors.white10,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade500)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10,vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.green.shade100,
                                    child:Image.asset("assets/img/2.png")
                                ),
                                SizedBox(height: 5,),
                                Text("Md Rakib",style: TextStyle(
                                    fontSize: 12
                                ),),],),
                            SizedBox(width: 40,),

                            DottedBorder(
                              strokeWidth: 2,
                              color: Colors.pink.shade100,
                              radius: Radius.circular(5),
                              borderType: BorderType.RRect,
                              strokeCap: StrokeCap.butt,
                              //stackFit: StackFit.,
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.pink.shade50,

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      minRadius: 10,
                                      child: Icon(Icons.add)),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15,),

                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/img/bikash bandile.png",height: 50,width: 50,),
                                SizedBox(height: 5,),
                                Text("বিকাশ ব্যান্ডলে",style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "SolaimanLipi"
                                ),),],),
                            SizedBox(width: 40,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.green.shade100,
                                  child: Image.asset("assets/img/airtel logo.png"),
                                ),
                                SizedBox(height: 5,),
                                Text("টং অফার",style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "SolaimanLipi"
                                ),)

                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
