import 'package:bikashapp_uiclone/Screen/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../Utils/color.dart';

class QrCodeScreen extends StatefulWidget {
  const QrCodeScreen({super.key});

  @override
  State<QrCodeScreen> createState() => _QrCodeScreenState();
}

class _QrCodeScreenState extends State<QrCodeScreen> {
  MobileScannerController cameraController = MobileScannerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR স্ক্যান',style: TextStyle(
            color: Colors.white,
            fontFamily: "SolaimanLipi",
            fontSize: 18
        ),),
        centerTitle: true,
        backgroundColor: AppColor().primaryColor,
        leading: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen(),));
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset("assets/image/fly.png",
              color: Colors.white,height: 50,width: 50,),
          )
        ],
      ),
      
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
         MobileScanner(
          controller:cameraController,
          onDetect: (capture) {
            final List<Barcode> barcodes = capture.barcodes;
            for(final barcode in barcodes){
              debugPrint("barcode found!${barcode.rawValue}");
            }
          },
        ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Container(
              padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Image.asset("assets/image/qr-code.png",
                      height: 40,width: 40,fit: BoxFit.cover,color: AppColor().primaryColor,),
                    SizedBox(width: 10,),
                    Text("কাস্টমার,মার্চেন্ট,এজেন্ট বা অন্য কোনো বিকাশ QR কোড\nস্ক্যান করুন",
                    style: TextStyle(
                      color: AppColor().primaryColor,
                      fontSize: 15,
                      fontFamily: "SolaimanLipi",
                      fontWeight: FontWeight.w500
                    ),
                    ),
                  ],
                )),
          )
      ]),
    );
  }
 }

