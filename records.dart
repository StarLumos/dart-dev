// Records expressions are comma-delimited lists of named or positional fields
var record = ('first', a: 2, b: true, 'last');

void main() {
  // record fields
  print(record.$1);
  // Prints 'first'; Static type `Object`, runtime type `String`
  print(record.a); // Prints 2; Static type `num`, runtime type `int`
  print(record.b); // Prints true
  print(record.$2); // Prints 'last'
}

(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main1() {
  // Record type annotation in a variable declaration:
  (String, int) record;
  // Initialize it with a record expression:
  record = ('A string', 123);

  // Record type annotation in a variable declaration:
  ({int a, bool b}) pair;
  // Initialize it with a record expression:
  pair = (a: 123, b: true);

  // Positional fields
  (int num, String str) another = (42, 'example');

  (int a, int b) recordAB = (1, 2);
  (int x, int y) recordXY = (3, 4);
  // two records with named fields with different names have DIFFERENT types

  recordAB = recordXY; // OK.
}

// Returns multiple values in a record:
(String name, int age) userInfo(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

final json = <String, dynamic>{
  'name': 'Dash',
  'age': 10,
  'color': 'blue',
};

void main2() {
  // Destructures using a record pattern with positional fields:
  var (name, age) = userInfo(json);

  /* Equivalent to:
    var info = userInfo(json);
    var name = info.$1;
    var age  = info.$2;
    */
}
