import 'package:flutter/material.dart';
import 'package:projecttravel/features/account/widgets/account_button.dart';

class TopButton extends StatefulWidget {
  const TopButton({Key? key}) : super(key: key);

  @override
  State<TopButton> createState() => _TopButtonState();
}

class _TopButtonState extends State<TopButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(
              text: 'Saved plan',
              onTap: () {},
            ),
            AccountButton(
              text: 'Account settings',
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            AccountButton(
              text: 'Log out',
              onTap: () {},
            ),
            AccountButton(
              text: 'Favourites',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
