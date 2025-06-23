import 'package:bikashapp_uiclone/Custom_Widgets/menu.dart';
import 'package:bikashapp_uiclone/Utils/color.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor().primaryColor,
        centerTitle: true,
        title: Text("সার্চ",style: TextStyle(
          color: Colors.white,
          fontFamily: "SolaimanLipi",
          fontSize: 18
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Image.asset("assets/image/fly.png",color: Colors.white,
                height: 40,width: 40
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                }, icon: Icon(Icons.arrow_back_ios_new,
                  color: AppColor().primaryColor,)),
               SizedBox(height: 10,),
               SizedBox(
                 height: 70,
                 width: MediaQuery.of(context).size.width/1.2,
                 child: TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Colors.grey),
                     ),
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Colors.grey),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Colors.grey),
                     ),
                     filled: true,
                     fillColor: Colors.white24,
                     hintText: "খুঁজে নিন",
                     hintStyle: TextStyle(
                       color: Colors.grey.shade700
                     ),
                     prefixIcon: Icon(Icons.search_rounded,color: Colors.grey.shade700,),
                     suffixIcon:Icon(Icons.mic_none,color: Colors.grey.shade700,)
                   ),

                 ),
               )
              ],
            ),
            Divider(height: 10,thickness: 5,color: Colors.grey.withOpacity(0.2),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text("সাজেশন",style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 15,
                fontFamily:"SolaimanLipi",
              ),),
            ),
            SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.search_rounded,),
                  SizedBox(width: 10,),
                  Text("ক্যাশব্যাক",style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "SolaimanLipi",
                  ),)
                ],
              ),
            ),
            SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.search_rounded,),
                  SizedBox(width: 10,),
                  Text("বিদ্যুৎ",style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "SolaimanLipi",
                  ),)
                ],
              ),
            ),
            SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.search_rounded,),
                  SizedBox(width: 10,),
                  Text("ফ্রি সেন্ড মানি",style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "SolaimanLipi",
                  ),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Divider(height: 2,thickness: 5,color: Colors.grey.withOpacity(0.2),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("অন্যান্য সেবাসমূহ",style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 15,
                fontFamily: "SolaimanLipi",
              ),),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset("assets/img/13.png",height: 50,width: 50,
                  ),
                  SizedBox(width: 20,),
                  Text("ডোনেশন",style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: "SolaimanLipi",
                  ),),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset("assets/img/request money.png",height: 50,width: 50,),
                  SizedBox(width: 20,),
                  Text("রিকোয়েস্ট মানি",style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: "SolaimanLipi",
                  ),),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset("assets/image/bar-chart.png",height: 50,width: 50,
                  color: AppColor().primaryColor.withOpacity(0.6),
                  ),
                  SizedBox(width: 20,),
                  Text("স্টেটমেন্ট",style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: "SolaimanLipi",
                  ),),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
