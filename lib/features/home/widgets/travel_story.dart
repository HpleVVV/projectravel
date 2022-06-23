import 'package:flutter/material.dart';

class TravelStory extends StatefulWidget {
  const TravelStory({Key? key}) : super(key: key);

  @override
  State<TravelStory> createState() => _TravelStoryState();
}

class _TravelStoryState extends State<TravelStory> {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://images.unsplash.com/photo-1583417319070-4a69db38a482?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      height: 235,
      fit: BoxFit.fitHeight,
    );
  }
}
