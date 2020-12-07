import 'package:bookmytrip/screens/tourScreen/dot_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TourScreen extends StatefulWidget {
  @override
  _TourScreenState createState() => _TourScreenState();
}

class _TourScreenState extends State<TourScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Image.asset('assets/images/cloud1.png'),
                ),
                Expanded(
                  child: Image.asset('assets/images/cloud2.png'),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: CarouselSlider(
              options: CarouselOptions(height: 200.0),
              items: [
                'assets/images/paris.jpg',
                'assets/images/paris.jpg',
              ].map((e) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              e,
                            ),
                          ),
                          // color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.symmetric(horizontal: .350),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 180, right: 100, top: 10),
              child: Row(
                children: [
                  DotSlider(
                    isOn: false,
                  ),
                  DotSlider(
                    isOn: true,
                  ),
                  DotSlider(
                    isOn: false,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 300,
          )
        ],
      ),
    );
  }
}
