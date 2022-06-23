import 'package:flutter/material.dart';
import 'package:projecttravel/features/home/widgets/address_box.dart';
import 'package:projecttravel/features/home/widgets/top_interest.dart';
import '../../../constants/global_variables.dart';
import '../widgets/intro.dart';
import 'package:searchfield/searchfield.dart';
import 'package:projecttravel/features/home/widgets/popular_destination.dart';

import '../widgets/travel_story.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
                child: Container(
              height: 48,
              margin: const EdgeInsets.only(left: 15),
              child: Material(
                borderRadius: BorderRadius.circular(7),
                elevation: 1,
                child: SearchField(
                  controller: myController,
                  suggestions: GlobalVariables.cities
                      .map((e) => SearchFieldListItem(e))
                      .toList(),
                  maxSuggestionsInViewPort: 5,
                  itemHeight: 40,
                  onSuggestionTap: (x) {},
                  searchInputDecoration: InputDecoration(
                      prefixIcon: InkWell(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 23,
                          ),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.only(top: 10),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          borderSide: BorderSide.none),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          borderSide:
                              BorderSide(color: Colors.black38, width: 1)),
                      hintText: 'Where do you want to go',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 17)),
                ),
              ),
            )),
            Container(
              color: Colors.transparent,
              height: 42,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Icon(
                Icons.mic,
                color: Colors.black,
                size: 25,
              ),
            )
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AddressBox(),
            const SizedBox(
              height: 10,
            ),
            const TopInterest(),
            const SizedBox(
              height: 15,
            ),
            const Intro(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Hot Destination',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                Text('See all >>>    ')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const PopularDestination(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Travel Story',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                Text('See all >>>    ')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const TravelStory(),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
