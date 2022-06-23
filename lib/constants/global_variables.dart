import 'package:flutter/material.dart';

String uri = 'http://10.0.2.2:3000';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 255, 212, 60),
      Color.fromARGB(255, 255, 234, 97),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Color.fromARGB(255, 255, 212, 60);
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static const selectedNavBarColor = Color.fromARGB(255, 255, 212, 60);
  static const unselectedNavBarColor = Colors.black87;

  static List<String> cities = [
    'Da Nang',
    'Ha Noi',
    'Hue',
    'Hoi An',
    'Ho Chi Minh',
    'Thanh Hoa',
    'Hai Phong',
    'Quang Ngai',
    'Vung Tau',
    'Bac Lieu',
    'Bac Giang',
    'Bac Ninh'
  ];

  static const List<Map<String, String>> interestImages = [
    {
      'title': 'Culture',
      'image': 'assets/images/culture.png',
    },
    {
      'title': 'Nature',
      'image': 'assets/images/nature.png',
    },
    {
      'title': 'Adventure',
      'image': 'assets/images/adventure.jpg',
    },
    {
      'title': 'Urban',
      'image': 'assets/images/urban.png',
    },
    {
      'title': 'Sport',
      'image': 'assets/images/sport.png',
    },
  ];
}
