import 'package:flutter/material.dart';

class DefaulHomePage extends StatelessWidget {
  const DefaulHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'there is no weather 😔 start',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'searching now 🔍',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          )
        ],
      ),
    );
  }
}