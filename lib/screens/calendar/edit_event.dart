import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projet/model/event.dart';

class EditEvent extends StatefulWidget {
  final DateTime firstDate;
  final DateTime lastDate;
  final Event event;
  const EditEvent(
      {Key? key,
      required this.firstDate,
      required this.lastDate,
      required this.event})
      : super(key: key);

  @override
  State<EditEvent> createState() => _EditEventState();
}

class _EditEventState extends State<EditEvent> {
  late DateTime _selectedDate;
  late TextEditingController _titleController;
  late TextEditingController _descController;
  late TextEditingController _animalNameController ;
  @override
  void initState() {
    super.initState();
    _selectedDate = widget.event.date;
    _titleController = TextEditingController(text: widget.event.title);
    _descController = TextEditingController(text: widget.event.description);
    _animalNameController = TextEditingController(text: widget.event.animalName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 237, 154, 9),
        elevation: 2, 
        shadowColor: Colors.white, 
        title: const Text("Edit Event")),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          InputDatePickerFormField(
            firstDate: widget.firstDate,
            lastDate: widget.lastDate,
            initialDate: _selectedDate,
            onDateSubmitted: (date) {
              print(date);
              setState(() {
                _selectedDate = date;
              });
            },
          ),
          TextField(
            controller: _animalNameController,
            maxLines: 1,
            decoration: const InputDecoration(labelText: 'Animal name',labelStyle: TextStyle(fontFamily: 'Gluten')),
          ),
          TextField(
            controller: _titleController,
            maxLines: 1,
            decoration: const InputDecoration(labelText: 'title',labelStyle: TextStyle(fontFamily: 'Gluten')),
          ),
          TextField(
            controller: _descController,
            maxLines: 5,
            decoration: const InputDecoration(labelText: 'description',labelStyle: TextStyle(fontFamily: 'Gluten')),
          ),
          ElevatedButton(
            onPressed: () {
              _addEvent();
            },
            style: ButtonStyle(
            backgroundColor:  MaterialStateProperty.all<Color>(const Color.fromARGB(255, 237, 154, 9),),  
          ),
            child: const Text("Save",style: TextStyle(fontFamily: 'Gluten',fontWeight: FontWeight.w900),),
          ),
        ],
      ),
    );
  }

  void _addEvent() async {
    final title = _titleController.text;
    final description = _descController.text;
    if (title.isEmpty) {
      print('title cannot be empty');
      return;
    }
    await FirebaseFirestore.instance.collection('events').doc(widget.event.id).update({
      "title": title,
      "description": description,
      "date": Timestamp.fromDate(_selectedDate),
    });
    if (mounted) {
      Navigator.pop<bool>(context, true);
    }
  }
}