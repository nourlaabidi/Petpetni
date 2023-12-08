import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyColumn(),
      ),
    );
  }
}

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 200,
            height: 120,
            child: Image.asset('asset/images/paw.png'),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xffd8d4d3),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        'You are ?',
                        style: TextStyle(
                          fontFamily: 'Gluten',
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          height: 0.8825,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ImageAndText('asset/images/vet.png', 'A vet'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ImageAndText(
                          'asset/images/animow.png', 'A pet owner'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ImageAndText(
                          'asset/images/petsitter.png', 'a pet sitter'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ImageAndText extends StatelessWidget {
  final String imagePath;
  final String description;

  ImageAndText(this.imagePath, this.description);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, width: 90, height: 90),
        SizedBox(height: 10),
        Text(description),
      ],
    );
  }
}
