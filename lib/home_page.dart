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
        body: const SafeArea(
          child: Center(
            child: Text('Contact List'),
          ),
        ));
  }
}
