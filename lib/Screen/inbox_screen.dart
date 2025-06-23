import 'package:bikashapp_uiclone/Custom_Widgets/transactions.dart';
import 'package:bikashapp_uiclone/Utils/color.dart';
import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen>
  with SingleTickerProviderStateMixin{


  final List<String>categorisList=[
    "লেনদেনসমূহ"
    "নোটিফিকেশন "
  ];

  List<Map<String, dynamic>> transactions = [
    {
      "image": "1",
      "type": "ক্যাশ আউট",
      "to": "Asif Pharmacy_01995093650",
      "trxId": "CET2HTQAPA",
      "amount": -500.00,
      "time": "08:17pm",
      "date": "29/05/25"
    },
    {
      "image": "2",
      "type": "সেন্ড মানি",
      "to": "01307901978",
      "trxId": "CER9FVFOJP",
      "amount": -510.00,
      "time": "05:45pm",
      "date": "27/05/25"
    },
    {
      "image": "3",
      "type": "পেমেন্ট",
      "to": "Bangladesh Railway",
      "trxId": "CER5FFS86X",
      "amount": -1060.00,
      "time": "08:23am",
      "date": "27/05/25"
    },
    {
      "image": "4",
      "type": "মোবাইল রিচার্জ",
      "to": "01601711290",
      "trxId": "CEL4AU7FJ8",
      "amount": -50.00,
      "time": "07:25pm",
      "date": "21/05/25"
    },
    {
      "image": "5",
      "type": "রিসিভড মানি",
      "from": "01812579131",
      "trxId": "CEL1ASWU1P",
      "amount": 2000.00,
      "time": "06:52pm",
      "date": "21/05/25"
    },
    {
      "image": "6",
      "type": "ক্যাশ আউট",
      "to": "HerdoY Telecom_01811867878",
      "trxId": "unknown",
      "amount": -1900.00,
      "time": "06:45pm",
      "date": "21/05/25"
    },
    {
      "image": "7",
      "type": "ক্যাশ আউট",
      "to": "HerdoY Telecom_01811867878",
      "trxId": "unknown",
      "amount": -1900.00,
      "time": "06:45pm",
      "date": "21/05/25"
    },
    {
      "image": "8",
      "type": "ক্যাশ আউট",
      "to": "HerdoY Telecom_01811867878",
      "trxId": "unknown",
      "amount": -1900.00,
      "time": "06:45pm",
      "date": "21/05/25"
    }
  ];


  int currentIndex=0;
  late TabController tabController ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 2, vsync: this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categorisList.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          centerTitle: true,
          backgroundColor: AppColor().primaryColor,
          title: Text("ইনবক্স",style: TextStyle(
            color: Colors.white,
            fontSize:18
          ),),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset("assets/image/fly.png",
                height: 50,width: 50,color: Colors.white),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TabBar(
                controller: tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Colors.grey.shade600,
                labelColor: AppColor().primaryColor,
                labelStyle: TextStyle(fontWeight: FontWeight.w500),
                indicatorColor:AppColor().primaryColor ,
                tabs: [
              Tab(child: Text("লেনদেনসমূহ"),),
              Tab(child: Text("নোটিফিকেশন")),
            ]),
           Expanded(
             child: TabBarView(
               controller: tabController,
                 children: [
               TransactionsTab(transactions: transactions,),
               Center(child: Text("নোটিফিকেশন নেই"),)
             ]),
           )


          ],
        ),
      ),
    );
  }
}
