import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projecttravel/features/account/widgets/below_app_bar.dart';
import 'package:projecttravel/features/account/widgets/top_button.dart';
import 'package:projecttravel/features/account/widgets/watched_place.dart';
import 'package:provider/provider.dart';

import '../../../constants/global_variables.dart';
import '../../../providers/user_provider.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(
                      text: 'Hello, ',
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: user.name,
                          style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ))
                  ],
                )),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: Row(children: const [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.notifications_outlined),
                ),
                Icon(Icons.search)
              ]),
            )
          ]),
        ),
      ),
      body: Column(
        children: const [
          BelowAppBar(),
          SizedBox(
            height: 20,
          ),
          TopButton(),
          SizedBox(height: 30),
          WatchedPlace(),
        ],
      ),
    );
  }
}
