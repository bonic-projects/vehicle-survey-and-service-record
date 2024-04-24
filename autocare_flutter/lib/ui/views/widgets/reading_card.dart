import 'package:autocare_flutter/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:autocare_flutter/constants/constants.dart';

class ReadingCard extends StatelessWidget {
  final String text;
  final double? value;

  const ReadingCard({
    Key? key,
    required this.text,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        color: scaffoldColor,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            // Wrap with SizedBox to limit the size of the Column
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text,
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: appText(
                    color: heartColor,
                    weight: FontWeight.w700,
                    size: 30,
                  ),
                ),
                SizedBox(height: 10), // Add space between text and divider
                const Divider(
                  thickness: 5,
                ),
                SizedBox(height: 10), // Add space between divider and value
                Text(
                  value.toString() ?? "", // Use ?? to handle null value
                  style: appText(
                    color: Colors.white,
                    weight: FontWeight.w700,
                    size: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
