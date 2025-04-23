import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Your app content goes here')),
        bottomNavigationBar: CustomNavBar(),
      ),
    );
  }
}

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(4, (index) {
          return TextButton(
            onPressed: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icon.svg', // Replace with your SVG file path
                  height: 24,
                  width: 24,
                ),
                SizedBox(height: 4), // Spacing between SVG and text
                Text('Button ${index + 1}'),
              ],
            ),
          );
        }),
      ),
    );
  }
}