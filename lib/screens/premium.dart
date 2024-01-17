import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projet/screens/successpay.dart';

class Premium extends StatefulWidget {
  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  // Lists for months and years
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  List<int> years = List.generate(100, (index) => DateTime.now().year - index);

  // Variables to hold selected values
  int selectedMonth = 1; // Initialize with January
  int selectedYear = DateTime.now().year; // Initialize with the current year

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 237, 154, 9),
        elevation: 2,
        shadowColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 25.0),
            Text(
              'Payement',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: const Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'GlutenBold',
              ),
            ),
            SizedBox(width: 25.0),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/claudio.png"),
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Text(
                'Premium Offer',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'GlutenBold',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Image(
                image: AssetImage('assets/Bank.png'),
                width: 200,
                height: 150,
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Credit Card Number',
                      fillColor: Color.fromARGB(255, 200, 200, 200),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 89, 83, 83),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Credit Card Name',
                      fillColor: Color.fromARGB(255, 141, 140, 140),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 89, 83, 83),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 210, 0),
                  child: Text(
                  'Card Expiration Date',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                  fontSize: 16.0,
                  ),
                ),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Month Dropdown
                    DropdownButton<int>(
                      value: selectedMonth,
                      hint: Text('Month'),
                      onChanged: (int? value) {
                        if (value != null) {
                          setState(() {
                            selectedMonth = value;
                          });
                        }
                      },
                      items: months.asMap().entries.map((entry) {
                        return DropdownMenuItem<int>(
                          value: entry.key + 1,
                          child: Text(entry.value),
                        );
                      }).toList(),
                    ),
                    // Year Dropdown
                    DropdownButton<int>(
                      value: selectedYear,
                      hint: Text('Year'),
                      onChanged: (int? value) {
                        if (value != null) {
                          setState(() {
                            selectedYear = value;
                          });
                        }
                      },
                      items: years.map((int year) {
                        return DropdownMenuItem<int>(
                          value: year,
                          child: Text(year.toString()),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: SizedBox(
                width: 350, // <-- Your width
                height: 50, // <-- Your height
                child: ElevatedButton(
                  onPressed: () {Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => SuccessPay()),
                              );},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent, // Background color
                    onPrimary: Colors.white, // Text Color (Foreground color)
                  ),
                  child: const Text(
                    'Pay 40 DT',
                    style: TextStyle(fontSize: 20,fontFamily: 'GlutenBold'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}