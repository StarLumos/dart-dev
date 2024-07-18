/// conditional expression
// Slightly longer version uses ?: operator.
String playerName(String? name) => name != null ? name : 'Guest';

// Very long version uses if-else statement.
String name(String? name) {
  if (name != null) {
    return name;
  } else {
    return 'Guest';
  }
}

/// cascade notation

// var paint = Paint()
//   ..color = Colors.black
//   ..strokeCap = StrokeCap.round
//   ..strokeWidth = 5.0;

// this is the same as the example below
// **both are commented out because of nonexistent functions and imports

// var paint = Paint();
// paint.color = Colors.black;
// paint.strokeCap = StrokeCap.round;
// paint.strokeWidth = 5.0;


/// null shorting cascade
/// if the object that the cascade operates on can be null, then use a null-shorting cascade (?..) for the first operation. Starting with ?.. guarantees that none of the cascade operations are attempted on that null object.

// querySelector('#confirm') // Get an object.
//   ?..text = 'Confirm' // Use its members.
//   ..classes.add('important')
//   ..onClick.listen((e) => window.alert('Confirmed!'))
//   ..scrollIntoView();

// this is the same as the example below

// var button = querySelector('#confirm');
// button?.text = 'Confirm';
// button?.classes.add('important');
// button?.onClick.listen((e) => window.alert('Confirmed!'));
// button?.scrollIntoView();


/// nested cascade notation

// final addressBook = (AddressBookBuilder()
//       ..name = 'jenny'
//       ..email = 'jenny@example.com'
//       ..phone = (PhoneNumberBuilder()
//             ..number = '415-555-0100'
//             ..label = 'home')
//           .build())
//     .build();
