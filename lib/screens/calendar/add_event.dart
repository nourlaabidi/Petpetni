import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddEvent extends StatefulWidget {
  final DateTime firstDate;
  final DateTime lastDate;
  final DateTime? selectedDate;
     const AddEvent(
      {Key? key,
      required this.firstDate,
      required this.lastDate,
      this.selectedDate})
      : super(key: key);

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  late DateTime _selectedDate;
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  final _animalNameController = TextEditingController();
  

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.selectedDate ?? DateTime.now();
    
  }

  @override
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
            onPressed: () {},
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
          decoration: const InputDecoration(labelText: 'animal Name',labelStyle: TextStyle(
          fontFamily: 'Gluten', ),
      ),
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
          
          child: const Text("Save your event",style: TextStyle(fontFamily: 'Gluten',fontWeight: FontWeight.w900),),
        ),
      ],
    ),
  
  );
}


  void _addEvent() async {
		final title = _titleController.text;
    final description = _descController.text;
    final animalName = _animalNameController.text;
  if (title.isEmpty) {
    print('title cannot be empty');
		
    return;
  }
  await FirebaseFirestore.instance.collection('events').add({
    "title": title,
    "description": description,
    "animalName": animalName,
    "date": Timestamp.fromDate(_selectedDate),
  });
  if(mounted) {
		Navigator.pop<bool>(context, true);
  }
  }
  
}