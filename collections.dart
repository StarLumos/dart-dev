// lists
var num = [1, 2, 3];

var constantList = const [1, 2, 3];
// constantList[1] = 1; // This line will cause an error.

// sets
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

void main() {
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);
}

// maps
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

void gift() {
  // Add a key-value pair
  gifts['fourth'] = 'calling birds';
  // Retrieve a value from a map using the subscript operator ([])
  assert(gifts['first'] == 'partridge');
  // If you look for a key that isn't in a map, you get null in return
  assert(gifts['third'] == null);
}

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

void main2() {
// you can create the same maps using a Map constructor
  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
}
