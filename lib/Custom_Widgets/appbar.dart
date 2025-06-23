
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/color.dart';
import 'balancebotton.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onmenuTap;
  const Appbar({required this.onmenuTap, super.key});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColor().primaryColor,
      toolbarHeight: 80,
      title: const Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/image/rakib.png",),
            radius: 25,
          ),
          SizedBox(width: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 8,),
              Center(
                child: Text("Md Rakib", style: TextStyle(
                    color: Colors.white,
                    fontSize: 12
                ),),
              ),
              SizedBox(height: 5,),
              Balancebotton()

            ],
          )
        ],
      ),
      actions: [
        Align(
          alignment: Alignment.topRight,
          child: IconButton(onPressed: () {},
              icon:Image.asset("assets/image/rewards.png",height: 40,width: 40,)),
        ),
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
              onPressed:onmenuTap,
              icon:Image.asset("assets/image/fly.png",height: 40,width: 40,)),
        )
      ],

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)
        )
      ),

    );
  }
}

