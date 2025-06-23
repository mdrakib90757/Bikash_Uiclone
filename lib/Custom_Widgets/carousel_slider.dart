



import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Utils/color.dart';

class Customcarousel extends StatefulWidget {
  const Customcarousel({super.key});

  @override
  State<Customcarousel> createState() => _CustomcarouselState();
}

class _CustomcarouselState extends State<Customcarousel> {

 final CarouselSliderController carouselSliderController = CarouselSliderController();
  List banners=[
    {"id":1,"imagepath":"assets/img/banner_one.png"},
    {"id":2,"imagepath":"assets/img/banner_two.png"},
    {"id":3,"imagepath":"assets/img/banner_three.png"},
    {"id":4,"imagepath":"assets/img/download.jpg"},
    {"id":5,"imagepath":"assets/img/final_banner.png"},
  ];
  int courrentIndex=0;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CarouselSlider(
              carouselController: carouselSliderController,
              items:banners.map((item){
                return Image.asset(item["imagepath"],
                  fit: BoxFit.cover,
                );
              }).toList(),
              options:CarouselOptions(
                height: 130,
                scrollPhysics: BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 3,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    courrentIndex=index;
                  });
                },
              )
          ),
        ),
        SizedBox(height:10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:banners.asMap().entries.map((entry){
            return GestureDetector(
              onTap: () =>carouselSliderController.animateToPage(entry.key),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: courrentIndex==entry.key
                    ?AppColor().primaryColor:
                      Colors.grey
                ),
                width: courrentIndex==entry.key?10:7,
                height: 7,
                margin: EdgeInsets.symmetric(horizontal: 3),
              ),
            );
          }).toList()
        )
      ],
    );
  }
}
