import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projecttravel/constants/global_variables.dart';
import 'package:provider/provider.dart';

import '../../../providers/user_provider.dart';

class BelowAppBar extends StatelessWidget {
  const BelowAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Container(
      decoration: const BoxDecoration(
        gradient: GlobalVariables.appBarGradient,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.only(left: 15, right: 10, bottom: 10),
      child: Row(
        children: [
          const Text(
            "Account type:  ",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
          ),
          Text(
            user.type,
            style: const TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
