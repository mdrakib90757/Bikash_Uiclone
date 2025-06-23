



import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Custom_Widgets/appbar.dart';
import '../Custom_Widgets/carousel_slider.dart';
import '../Custom_Widgets/custom_bikashbandle.dart';
import '../Custom_Widgets/custom_functionbox.dart';
import '../Custom_Widgets/custom_suugestion.dart';
import '../Custom_Widgets/expended_menu.dart';
import '../Custom_Widgets/others_services.dart';
import '../Utils/color.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final GlobalKey<ScaffoldState>_scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: Appbar(
        onmenuTap: () {
          _scaffoldKey.currentState?.openEndDrawer();
        },
      ),
      endDrawer:Drawer(
          child: Card(
            child: ListView(
            padding: EdgeInsets.zero,
                  children: [
                    Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("বিকাশ",style: TextStyle(
                      color: AppColor().primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    SizedBox(width: 5,),
                    Text("মেন্যু",style: TextStyle(
                      color: AppColor().primaryColor,
                      fontSize: 19,
                      fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColor().primaryColor),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(child: Text("English",style: TextStyle(
                    color: AppColor().primaryColor
                  ),)),
                ),
              ],
            ),),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title:Text("হোম",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                      ),),
                      leading: IconButton( onPressed: () {

                      },icon: Image.asset("assets/drawerimg/home.png",
                        height: 30,width: 30,color: AppColor().primaryColor,)),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title:Text("স্টেটমেন্ট",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                      ),),
                      leading: IconButton( onPressed: () {

                      },icon: Image.asset("assets/drawerimg/bar-chart.png",
                        height: 30,width: 30,color: AppColor().primaryColor,)),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title:Text("লিমিট",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                      ),),
                      leading: IconButton( onPressed: () {

                      },icon: Image.asset("assets/drawerimg/alert_icon.png",
                        height: 30,width: 30,color: AppColor().primaryColor,)),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title:Text("কুপন",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                      leading: IconButton( onPressed: () {

                      },icon: Image.asset("assets/drawerimg/perchentage.png",
                        height: 30,width: 30,color: AppColor().primaryColor,)),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title:Text("তথ্য হালনাগাদ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                      leading: IconButton( onPressed: () {

                      },icon: Image.asset("assets/drawerimg/info.png",
                        height: 30,width: 30,color: AppColor().primaryColor,)),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title:Text("নমিনির তথ্য হালনাগাদ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                      leading: IconButton( onPressed: () {

                      },icon: Image.asset("assets/drawerimg/notes.png",
                        height: 30,width: 30,color: AppColor().primaryColor,)),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title:Text("রেফার বিকাশ অ্যাপ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                      leading: IconButton( onPressed: () {

                      },icon: Image.asset("assets/drawerimg/group.png",
                        height: 30,width: 30,color: AppColor().primaryColor,)),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title:Text("বিকাশ ম্যাপ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                      leading: IconButton( onPressed: () {
                      },icon: Image.asset("assets/drawerimg/location.png",
                        height: 30,width: 30,color: AppColor().primaryColor,)),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title:Text("বিকাশ নিয়ে জানুন",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                      leading: IconButton( onPressed: () {
                      },icon: Image.asset("assets/drawerimg/discover.png",
                        height: 30,width: 30,color: AppColor().primaryColor,)),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title:Text("সেটিংস",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                      leading: IconButton( onPressed: () {
                      },icon: Image.asset("assets/drawerimg/ic_settings.png",
                        height: 30,width: 30,color: AppColor().primaryColor,)),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title:Text("সাপোর্ট",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                      leading: IconButton( onPressed: () {
                      },icon: Image.asset("assets/drawerimg/support.png",
                        height: 30,width: 30,color: AppColor().primaryColor,)),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title:Text("লগ আউট",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                      leading: IconButton( onPressed: () {
                      },icon: Image.asset("assets/drawerimg/logout.png",
                        height: 30,width: 30,color: AppColor().primaryColor,)),
                    ),
                  ],
            ),
          ),
          ),


      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all( color: const Color.fromARGB(255, 226, 226, 226),
                      width: 0.5),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ExpendedMenu()),
           Container(
               margin: EdgeInsets.all(5),
               child: Customcarousel()
           ),
            SizedBox(height: 5,),
            CustomFunctionbox(),
            SizedBox(height: 10,),
            CustomBikashbandle(),
            SizedBox(height: 10,),
            CustomSuugestion(),
            SizedBox(height: 10,),
            OthersServices(),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(10)
                ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/img/100.png",fit: BoxFit.cover,))),
            ),
            SizedBox(height: 20,),
            Text("ডিপিএস খুলুন",style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: "SolaimanLipi"
            ),),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.bangladeshiTakaSign,size: 10,),
                Text("২৫০ থেকে, কাগজপত্রের ঝামেলা নেই",style: TextStyle(
                  color: Colors.black,
                  fontFamily: "SolaimanLipi",
                  fontSize: 11
                ),)
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: AppColor().primaryColor)
              ),
              child: Center(
                child: Text("ডিপিএস খুলুন এখনই ",style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "SolaimanLipi"
                ),),
              ),
            ),


            SizedBox(height: 50,),
            












          ],
        ),
      ),
    );
  }
}
