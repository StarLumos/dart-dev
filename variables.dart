// variables
var name = 'Alice';
Object animal = 'rabbit';
String city = 'Wonderland';

// null safety
String? day; // Nullable type. Can be `null` or string
String place =
    'Castle of Hearts'; // Non-nullable type. Cannot be `null` but can be string.

// default value
int? lineCount; // default of null

// with null safety, you must initialize the values of non-nullable variables before you use them:
bool weLikeToCount = true;

void main() {
  assert(lineCount == null);

  if (weLikeToCount) {
    lineCount = 10;
  } else {
    lineCount = 0;
  }

  print(lineCount);
}

// late variables
// declaring a non-nullable variable that will initialized at a later point in the code
late String description;

void main1() {
  description = 'Bamboozled!';
  print(description);
}

// final variables: can only be set once
// although a final object cannot be modified, its fields can be changed.
final name1 = 'Bob'; // Without a type annotation
final String nickname = 'Bobby';

// const variables: compile-time constant
// a const object and its fields cannot be changed: they're immutable.
// if the const variable is at the class level, mark it with `static const`
const dynes = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * dynes; // Standard atmosphere

var foo = const []; // can be changed
final bar = const []; // cannot be changed
const baz = []; // Equivalent to `const []`; cannot be changed

void main2() {
  foo = [1, 2, 3]; // Was const []
  foo = [42];
  // bar = [42] is impossible
  // baz = [42] is impossible
}

const Object i = 3; // Where i is a const Object with an int value...
const list = [i as int]; // Use a typecast.
const map = {if (i is int) i: 'int'}; // Use is and collection if.
const set = {if (list is List<String>) ...list}; // ...and a spread.
