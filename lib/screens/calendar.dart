import 'dart:collection';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projet/model/event.dart';
import 'package:projet/screens/add_event.dart';
import 'package:table_calendar/table_calendar.dart';
class EventCalendarScreen extends StatefulWidget {
  const EventCalendarScreen({Key? key}) : super(key: key);

  @override
  State<EventCalendarScreen> createState() => _EventCalendarScreenState();
}

class _EventCalendarScreenState extends State<EventCalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDate;
  late Map<DateTime, List<Event>> _events;
  late DateTime _firstDay; 
  late DateTime _lastDay;
  
int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}
List _getEventsForTheDay(DateTime day) {
  return _events[day] ?? [];
}
  @override
   void initState() {
    
    super.initState();
    
    _selectedDate = _focusedDay;
     _events = LinkedHashMap(
    equals: isSameDay,
    hashCode: getHashCode,
  );
  _firstDay = DateTime.now().subtract(const Duration(days: 1000));
  _lastDay = DateTime.now().add(const Duration(days: 1000));
  
  _loadFirestoreEvents();  

    
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 237, 154, 9),
        elevation: 2, 
        shadowColor: Colors.white, 
         leading:
          IconButton(
            icon: const Icon(Icons.menu), 
            color:Colors.white,
            onPressed: () {/* Action à effectuer lors du clic sur l'icône*/},
            ),
          title: const Row(
            children: [
              
              Expanded(
              flex: 6,
              child: Image(
                image: AssetImage("assets/logoPetpetni.png"),
                
              ),
),

              SizedBox(width: 10.0,),
              
              Expanded (
                flex:1,
                child: CircleAvatar(
                backgroundImage: AssetImage("assets/claudio.png"),
                
  
                ),
              ),
            ],
          )
      ),
      body: ListView(
        children: [
          TableCalendar(
            firstDay: DateTime(2022, 1, 1),
            lastDay: DateTime(2023, 12, 31),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(_selectedDate, selectedDay)) {
                // Call `setState()` when updating the selected day
                setState(() {
                  _selectedDate = selectedDay;
                  _focusedDay = focusedDay;
                });
              }
            },
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDate, day);
            },
            calendarStyle: const CalendarStyle(
            isTodayHighlighted: true,
            selectedDecoration: BoxDecoration(
            color: Color.fromARGB(255, 237, 154, 9),
            shape: BoxShape.circle,
            
          ),
          ),
           daysOfWeekStyle: const DaysOfWeekStyle(
          weekdayStyle: TextStyle(
            fontFamily: "Gluten", 
          
          ),
          weekendStyle: TextStyle(
            fontFamily: "Gluten", 
          ),
        ),
        headerStyle: const HeaderStyle(
        titleTextStyle: TextStyle(
          fontFamily: "Gluten", 
          fontSize: 18.0, 
          fontWeight: FontWeight.w900,
          
        ),
      ),
  
        onFormatChanged: (format) {
              if (_calendarFormat != format) {
                // Call `setState()` when updating calendar format
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
             onPageChanged: (focusedDay) {
                setState(() {
                  _focusedDay = focusedDay;
                });
                _loadFirestoreEvents(); // call this
              },  
            eventLoader: _getEventsForTheDay,
          
          ),
          Column(
          children: _getEventsForTheDay(_selectedDate!).map(
            (event) => ListTile(
              title: Text(
                event.title,
                
              ),
              subtitle: Text(
                event.animalName,
                
              ),
            trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () async {
              // Boîte de dialogue de confirmation pour la suppression
              bool confirmDelete = await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Delete Event?",style: TextStyle(fontFamily: 'Gluten')),
                    content: const Text("Are you sure you want to delete?",style: TextStyle(fontFamily: 'Gluten')),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text('No',style: TextStyle(fontFamily: 'Gluten'),),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        child: const Text('Yes',style: TextStyle(fontFamily: 'Gluten')),
                      ),
                    ],
                  );
                },
              );

              if (confirmDelete ?? false) {
                
                await FirebaseFirestore.instance
                    .collection('events')
                    .doc(event.id) 
                    .delete();

                
                _loadFirestoreEvents();
              }
            },
          ),
        ),
          ).toList(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('assets/catcalendar.png',height: 250, width: 250,),
          ],

        )
          
        ]
      
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push<bool>(
            context,
            MaterialPageRoute(
              builder: (_) => AddEvent(
                firstDate: _firstDay,
                lastDate: _lastDay,
                selectedDate: _selectedDate,
              ),
            ),
          );
          if (result ?? false) {
            _loadFirestoreEvents();
          }
        },
        

        backgroundColor: const Color.fromARGB(255, 237, 154, 9),
        child: const Icon(Icons.add),
      ),
    );
  }
  _loadFirestoreEvents() async {
  
  final firstDay = DateTime(_focusedDay.year, _focusedDay.month, 1);
  final lastDay = DateTime(_focusedDay.year, _focusedDay.month + 1, 0);
  _events = {};
  final snap = await FirebaseFirestore.instance
      .collection('events')
      .where('date', isGreaterThanOrEqualTo: firstDay)
      .where('date', isLessThanOrEqualTo: lastDay)
      .withConverter(
          fromFirestore: Event.fromFirestore,
          toFirestore: (event, options) => event.toFirestore())
      .get();
  for (var doc in snap.docs) {
    final event = doc.data();
    final day = DateTime.utc(event.date.year, event.date.month, event.date.day);
    if (_events[day] == null) {
      _events[day] = [];
    }
    _events[day]!.add(event);
  }
  setState(() {});
}
}