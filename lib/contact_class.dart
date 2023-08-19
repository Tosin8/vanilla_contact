class Contact {
  final String name;

  const Contact({
    required this.name,
  });
}

class ContactBook {
  ContactBook._sharedInstance();
  static final ContactBook _shared = ContactBook._sharedInstance();
  factory ContactBook() => _shared;

  final List<Contact> _contacts = []; // an empty list array to begin with.
  int get length => _contacts.length;

// to add a new contact
  void add({required Contact contact}) {
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
