
import 'package:flutter/material.dart';

import '../Custom_Widgets/custom_navigationbar.dart';
import '../Utils/color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _numbercontroller=TextEditingController();
  final TextEditingController _passwordcontroller=TextEditingController();
  bool isFilled=false;
  int currentState=0;
  final formSate=GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _numbercontroller.addListener(_checkText);
    _passwordcontroller.addListener(_checkText);
  }
  void _checkText(){
    setState(() {
      isFilled=_numbercontroller.text.trim().isNotEmpty;
      isFilled=_passwordcontroller.text.trim().isNotEmpty;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _numbercontroller.removeListener(_checkText);
    _passwordcontroller.removeListener(_checkText);
    _numbercontroller.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: AppColor().primaryColor,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColor().primaryColor),
                color: Colors.white
              ),
              child: Center(
                child: Text("English",style: TextStyle(
                  color: AppColor().primaryColor,
                  fontWeight: FontWeight.w400
                ),),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formSate,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/image/logo.png",height: 50,width: 50,),
        
                    Image.asset("assets/image/qr-code (1).png",
                      height: 50,width: 50,
                      color: AppColor().primaryColor,)
        
                  ],
                ),
                SizedBox(height: 20,),
                Text("আপনার বিকাশ একাউন্ট\nলগ ইন করুন",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontFamily: 'SolaimanLipi',
                ),),
                SizedBox(height: 30,),
                Text("একাউন্ট নম্বর",style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'SolaimanLipi',
                ),),
                TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return"Enter your number";
                    }else{
                      return null;
                    }
                  },
                  controller: _passwordcontroller,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400)
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)
                    ),
                    focusedBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("বিকাশ পিন",style: TextStyle(
                  fontSize: 15,
                    color: Colors.grey.shade700,
                  fontFamily: "SolaimanLipi"
                ),),
                TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return"Enter your password";
                    }else{
                      return null;
                    }
                  },
                  controller: _numbercontroller,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)
                    ),
                    focusedBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)
                    ),
                    hintText: "বিকাশ পিন নম্বর দিন",
                    hintStyle: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14
                    )
                  ),
                ),
                SizedBox(height: 20,),
                Text("পিন ভুলে গিয়েছেন?পিন রিসেট করুন",style: TextStyle(
                  fontSize: 12,
                  color: AppColor().primaryColor
                ),),
        
        
        
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          setState(() {
            if(formSate.currentState!.validate()){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) =>CustomNavigationbar() ,));
            }
          });
        },
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              color: isFilled?AppColor().primaryColor:Colors.grey,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8)
              )
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("পরবর্তী",style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "SolaimanLipi"
                ),),
                Icon(Icons.arrow_forward,
                  color: Colors.white,size: 30,)
              ],
            ),
          ),
        ),
      ),

    );
  }
}
