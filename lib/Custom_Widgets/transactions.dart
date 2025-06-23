import 'package:bikashapp_uiclone/Utils/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionsTab extends StatefulWidget {
 final List<Map<String, dynamic>> transactions;
  const TransactionsTab({super.key, required this.transactions});

  @override
  State<TransactionsTab> createState() => _TransactionsTabState();
}

class _TransactionsTabState extends State<TransactionsTab> {


  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 240,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black26.withOpacity(0.5)),
                    //color: Colors.grey.shade600
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.magnifyingGlass,color: Colors.black26.withOpacity(0.5),),
                        SizedBox(width: 10,),
                        Text("TrxID বা নাম্বার দিয়ে খুঁজুন",
                        style: TextStyle(
                          color: Colors.black26.withOpacity(0.5)
                        ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: Colors.black26.withOpacity(0.5)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Image.asset("assets/img/filter.png",
                          height: 17,width: 17,color: AppColor().primaryColor,),
                        SizedBox(width: 8,),
                        Text("ফিল্টার",style: TextStyle(
                          color: AppColor().primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                        ),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Divider(height: 2,thickness: 5,color: Colors.grey.withOpacity(0.2),),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text("গত ৯০ দিনের লেনদেন",style: TextStyle(
              fontSize: 12,
              fontFamily: "SolaimanLipi"
            ),),
          ),
          SizedBox(height: 10,),
          Divider(thickness: 3,color: Colors.grey.withOpacity(0.2),),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
             // shrinkWrap: true,
             // physics: NeverScrollableScrollPhysics(),
              itemCount: widget.transactions.length,

              itemBuilder: (context, index) {
                final data=widget.transactions[index];
                final bool isReceived = data["amount"] > 0;
              return Card(
                margin: EdgeInsets.all(1),
                child:Padding(
                  padding: const EdgeInsets.
                  symmetric(horizontal: 10,vertical: 10),
                  child: ListTile(
                    //titleAlignment: ListTileTitleAlignment.top,
                    leading: CircleAvatar(
                      radius: 25,
                      child: Text(data["image"]),
                      // backgroundColor: isReceived? Colors.
                      // lightGreen.shade100:AppColor().primaryColor.withOpacity(0.3)
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data["type"],
                        style: TextStyle(
                            color: Colors.black,
                          fontSize: 12
                        ),
                        ),
                        SizedBox(height: 5,),
                        Text(data["to"].toString(),style: TextStyle(
                            color: Colors.black,
                            fontSize: 12
                        ),),
                        SizedBox(height: 5,),
                        Text(data["trxId"],style: TextStyle(
                            color: Colors.black.withOpacity(0.9),
                            fontSize: 12
                        ),),
                      ],
                    ),
                    trailing: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("${isReceived?"+":"-"}৳${data["amount"].toString()}",style: TextStyle(
                          color:isReceived?Colors.green: AppColor().primaryColor,
                          fontSize: 12
                        ),),
                        SizedBox(height: 4,),
                        Text("${data["time"]}-${data["date"]}"),
                        SizedBox(height: 4,),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                              builder: (BuildContext context) {
                                  String type=data["type"].toString().trim();
                                  print("type${data["type"]}");
                                  if(data["type"]=="সেন্ড মানি"){
                                    return _buildSendMoneyInfo(data);
                                  }else if(data["type"]=="ক্যাশ আউট"){
                                    return _buildCashOutInfo(data);
                                  }else{
                                    return Center(child: Text("কোনো তথ্য পাওয়া যায়নি"));
                                  }
                                },);
                          },
                            child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 11,))
                      ],
                    ),
                  ),
                ) ,
              );
            },
            ),
          )
        ],
    );
  }

  Widget _buildSendMoneyInfo(Map<String, dynamic> data) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(

          )
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${data["type"]}",style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "SolaimanLipi"
                ),),
                Text("বন্ধ",style: TextStyle(
                    color: AppColor().primaryColor,
                    fontSize: 15,
                    fontFamily: "SolaimanLipi",
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Table(
            border: TableBorder.all(color: Colors.black.withOpacity(0.2)),
            children: [
              TableRow(
                  decoration: BoxDecoration(
                      color:Color(0xFFF7F2FA)
                  ),
                  children: [
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("একাউন্ট",style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)
                              ),),
                              Text("${data["to"]}",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("সময়",style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)
                              ),),
                              Text("${data["time"]}-${data["date"]}",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                  ]
              ),
              TableRow(
                  decoration: BoxDecoration(
                      color:Color(0xFFF7F2FA)
                  ),
                  children: [
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("পরিমান",style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)
                              ),),
                              Text("৳${data["amount"]}",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("চার্জ",style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)
                              ),),
                              Text("৳0.00",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                  ]
              ),
              TableRow(
                  decoration: BoxDecoration(
                      color:Color(0xFFF7F2FA)
                  ),
                  children: [
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("ট্রানজেকশন",style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)
                              ),),
                              Text("${data["trxId"]}",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("রেফারেন্স"),
                        )
                    ),
                  ]
              ),
            ],
          ),

          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 165,
                  decoration: BoxDecoration(
                      color:Color(0xFFF7F2FA),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color:AppColor().primaryColor)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/img/arrow.png",
                        height: 27,width: 27,color: AppColor().primaryColor,),
                      SizedBox(width: 5,),
                      Text("${data["type"]}",style: TextStyle(
                        color: AppColor().primaryColor
                      ),)
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 50,
                  width: 165,
                  decoration: BoxDecoration(
                      color:Color(0xFFF7F2FA),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color:AppColor().primaryColor)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/img/share.png",
                        height: 30,width: 30,color: AppColor().primaryColor,),
                      SizedBox(width: 5,),
                      Text("শেয়ার",style: TextStyle(
                        color: AppColor().primaryColor
                      ),)
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCashOutInfo(Map<String, dynamic> data){
    return Container(
      height: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(

          )
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${data["type"]}",style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "SolaimanLipi"
                ),),
                Text("বন্ধ",style: TextStyle(
                    color: AppColor().primaryColor,
                    fontSize: 15,
                    fontFamily: "SolaimanLipi"
                ),)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Table(
            border: TableBorder.all(color: Colors.black.withOpacity(0.2)),
            children: [
              TableRow(
                  decoration: BoxDecoration(
                      color:Color(0xFFF7F2FA)
                  ),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("একাউন্ট",style: TextStyle(
                                color: Colors.black.withOpacity(0.6)
                            ),),
                            Text("${data["to"]}",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            )
                          ],
                        ),
                      ) 
                    ),
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("সময়",style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)
                              ),),
                              Text("${data["time"]}-${data["date"]}",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ) ),
                  ]
              ),
              TableRow(
                  decoration: BoxDecoration(
                      color:Color(0xFFF7F2FA)
                  ),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("পরিমান",style: TextStyle(
                                color: Colors.black.withOpacity(0.6)
                            ),),
                            Text("৳${data["amount"]}",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      )
                    ),
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("চার্জ",style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)
                              ),),
                              Text("৳0.00",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )),
                  ]
              ),
              TableRow(
                  decoration: BoxDecoration(
                      color:Color(0xFFF7F2FA)
                  ),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ট্রানজেকশন",style: TextStyle(
                                color: Colors.black.withOpacity(0.6)
                            ),),
                            Text("${data["trxId"]}",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      )

                    ),
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("রেফারেন্স"),
                        )),
                  ]
              ),
            ],
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 165,
                  decoration: BoxDecoration(
                      color:Color(0xFFF7F2FA),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color:AppColor().primaryColor)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/img/arrow.png",
                        height: 27,width: 27,color: AppColor().primaryColor,),
                      SizedBox(width: 5,),
                      Text("${data["type"]}",style: TextStyle(
                          color: AppColor().primaryColor
                      ),)
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 50,
                  width: 165,
                  decoration: BoxDecoration(
                      color:Color(0xFFF7F2FA),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color:AppColor().primaryColor)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/img/share.png",
                        height: 30,width: 30,color: AppColor().primaryColor,),
                      SizedBox(width: 5,),
                      Text("শেয়ার",style: TextStyle(
                          color: AppColor().primaryColor
                      ),)
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );

  }

}


