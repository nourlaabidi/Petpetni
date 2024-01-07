import 'package:flutter/material.dart';
import 'HomePage.dart';

String accounttype = '';

void main() {
  runApp(YouareScreen());
}

class YouareScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: YouareCol(),
      ),
    );
  }
}

class YouareCol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 200,
            height: 120,
            child: Image.asset('assets/paw.png'),
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
                      child: ImageAndText(
                        imagePath: 'assets/animow.png',
                        description: 'A pet lover',
                        onPressed: () {
                          print('Pet lover pressed');
                          accounttype = 'Pet lover';
                          print(accounttype);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => HomePage()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ImageAndText(
                        imagePath: 'assets/vet.png',
                        description: 'A vet',
                        onPressed: () {
                          print('Vet pressed');
                          accounttype = 'vet';
                          print(accounttype);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => HomePage()),
                          );
                        },
                      ),
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
  final VoidCallback? onPressed;

  ImageAndText({
    required this.imagePath,
    required this.description,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // Add any additional styling here
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 90, height: 90),
            SizedBox(height: 10),
            Text(description),
          ],
        ),
      ),
    );
  }
}
