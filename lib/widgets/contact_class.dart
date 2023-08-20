import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'new_contact.dart';

class Contact {
  final String id;
  final String name;

  Contact({
    required this.name,
  }) : id = const Uuid().v4();
}

class ContactBook extends ValueNotifier<List><Contact>> {
  ContactBook._sharedInstance() : super([]);
  static final ContactBook _shared = ContactBook._sharedInstance();
  factory ContactBook() => _shared;

  final List<Contact> _contacts = []; // an empty list array to begin with.
  int get length => _contacts.length;

// to add a new contact
  void add({required Contact contact}) {
    final ValueNotifier notifier; 
    _contacts.add(contact);
  }

// to remove a contact
  void remove({required Contact contact}) {
    _contacts.remove(contact);
  }

  // a function to retrieve contacts with index.
  Contact? contact({required int atIndex}) =>
      _contacts.length > atIndex ? _contacts[atIndex] : null;
}
