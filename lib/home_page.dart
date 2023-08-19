import 'package:flutter/material.dart';

import 'contact_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final contactBook = ContactBook();
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Contacts',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
            child: ListView.builder(
                itemCount: contactBook.length,
                itemBuilder: (context, index) {
                  final contact = contactBook.contact(atIndex: index)!;
                  return ListTile(
                    title: Text(contact.name),
                  );
                }),
            // adding a new contact using a widget.
            floatingActionButton: FloatingActionButton(onPressed: onPressed)));
  }
}
