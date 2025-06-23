import 'package:flutter/material.dart';

class ScrollMenu extends StatelessWidget {
  final String?image;
  final String?title;
  const ScrollMenu({super.key, required this.image,required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Image(
            image: AssetImage(image!),
            height: 60,
          ),
          SizedBox(height: 10,),
          Text(
            title!,
            style: const TextStyle(fontFamily: 'SourceSansPro',fontSize: 12),
          ),
        ],
      ),
    );
  }
}
