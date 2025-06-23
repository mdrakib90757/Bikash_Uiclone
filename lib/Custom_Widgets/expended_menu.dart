




import 'package:bikashapp_uiclone/Custom_Widgets/scroll_menu.dart';
import 'package:flutter/material.dart';

import '../Utils/color.dart';
import 'menu.dart';



class ExpendedMenu extends StatefulWidget {
  const ExpendedMenu({super.key});

  @override
  State<ExpendedMenu> createState() => _ExpendedMenuState();
}

class _ExpendedMenuState extends State<ExpendedMenu> {

  bool _expanded = true;
  @override
  Widget build(BuildContext context) {
    return _expanded?
    Stack(
      alignment: AlignmentDirectional.center,

      children: [
        Column(
          children: [
            Row(
            children: [
              Menu(image:"assets/img/1.png", title: "সেন্ড মানি"),
              SizedBox(width: 10,),
              Menu(image: "assets/img/2.png", title: "মোবাইল রিচার্জ"),
              SizedBox(width: 10,),
              Menu(image: "assets/img/4.png", title: "ক্যাশ আউট"),
              SizedBox(width: 10,),
              Menu(image: "assets/img/3.png", title: "পেমেন্ট")
            ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Menu(image:"assets/img/12.png", title: "অ্যাড মানি"),
                SizedBox(width: 10,),
                Menu(image: "assets/img/15.png", title: "পে বিল"),
                SizedBox(width: 10,),
                Menu(image: "assets/img/7.png", title: "সেভিংস"),
                SizedBox(width: 10,),
                Menu(image: "assets/img/8.png", title: "লোন")
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Menu(image:"assets/img/insurance (2).png",title: "ইন্সুরেন্স"),
                SizedBox(width: 10,),
                Menu(image: "assets/img/9.png", title: "পবিকাশ টু ব্যাংক"),
                SizedBox(width: 10,),
                Menu(image: "assets/img/14.png", title: "এডুকেশন ফি"),
                SizedBox(width: 10,),
                Menu(image: "assets/img/11.png", title: "মাইকোফাইনান্স")
              ],
            ),


          ],
        ),
        Positioned(
            bottom:0,
            child: Container(
              height: 90,
              width: 800,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [
                      0.3,
                      1,
                    ],
                    colors: [
                      Colors.white,
                      Colors.white10,
                    ]),
              ),
            )),

        Positioned(
          bottom: 40,
          child: Container(
            height: 30,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xffDDDDDD),
                    blurRadius: 5.0,
                    spreadRadius: 2,
                    offset: Offset(
                      0.0, // Move to right 7.0 horizontally
                      5.0, // Move to bottom 8.0 Vertically
                    ))
              ],
            ),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                  _expanded=false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'আরো দেখুন',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 12,
                        color: AppColor().primaryColor,
                      ),
                    ), // <-- Text
                    Icon(
                      // <-- Icon
                      Icons.keyboard_arrow_down,
                      color: AppColor().primaryColor,size: 18,
                    ),
                  ],
                ),
              ),
            ),

          ),
        ),


      ],
    ):Column(
      children: [
        Row(
          children: [
            Menu(image:"assets/img/1.png", title: "সেন্ড মানি"),
            SizedBox(width: 10,),
            Menu(image: "assets/img/2.png", title: "মোবাইল রিচার্জ"),
            SizedBox(width: 10,),
            Menu(image: "assets/img/4.png", title: "ক্যাশ আউট"),
            SizedBox(width: 10,),
            Menu(image: "assets/img/3.png", title: "পেমেন্ট")
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Menu(image:"assets/img/12.png", title: "অ্যাড মানি"),
            SizedBox(width: 10,),
            Menu(image: "assets/img/15.png", title: "পে বিল"),
            SizedBox(width: 10,),
            Menu(image: "assets/img/7.png", title: "সেভিংস"),
            SizedBox(width: 10,),
            Menu(image: "assets/img/8.png", title: "লোন")
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Menu(image:"assets/img/insurance (2).png",title: "ইন্সুরেন্স"),
            SizedBox(width: 10,),
            Menu(image: "assets/img/9.png", title: "পবিকাশ টু ব্যাংক"),
            SizedBox(width: 10,),
            Menu(image: "assets/img/14.png", title: "এডুকেশন ফি"),
            SizedBox(width: 10,),
            Menu(image: "assets/img/11.png", title: "মাইকোফাইনান্স")
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            ScrollMenu(image:"assets/img/toll (2).png",title: "টোল"),
            SizedBox(width: 10,),
            ScrollMenu(image: "assets/img/request money.png", title: "রিকোয়েস্ট মানি"),
            SizedBox(width: 10,),
            ScrollMenu(image: "assets/img/10.png", title: "রেমিটেন্স"),
            SizedBox(width: 10,),
            ScrollMenu(image: "assets/img/13.png", title: "ডোনেশন")
          ],
        ),
        SizedBox(height: 10,),
        Container(
          height: 30,
          width: 90,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(100)),
            boxShadow: [
              BoxShadow(
                  color: Color(0xffDDDDDD),
                  blurRadius: 6.0,
                  spreadRadius: 2,
                  offset: Offset(
                    0.0, // Move to right 7.0 horizontally
                    5.0, // Move to bottom 8.0 Vertically
                  ))
            ],
          ),
          child: Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _expanded=true;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'বন্ধ করুন',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 12,
                      color: AppColor().primaryColor,
                    ),
                  ), // <-- Text
                  Icon(
                    // <-- Icon
                    Icons.keyboard_arrow_up,
                    color: AppColor().primaryColor,size: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}



