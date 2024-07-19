// creating a single interface to take in a type parameter
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

// collection literals
var names = <String>['Seth', 'Kathy', 'Lars'];
var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
var pages = <String, String>{
  'index.html': 'Homepage',
  'robots.txt': 'Hints for web robots',
  'humans.txt': 'We are people, not machines'
};

// parameterized types with constructors
// turning a collection of strings into a set; useful for getting rid of duplicates
var nameSet = Set<String>.from(names);
// creates a map that has int keys and string values
var views = Map<int, String>();

// restricting the parameterized types
class Foo<T extends Object> {
  // subtype of 'Object' instead of the usual 'Object?'
  // Any type provided to Foo for T must be non-nullable.
  // 'Object?' would allow T to be null
}

// extending with other types than Object
class SomeBaseClass {}

class Bar<T extends SomeBaseClass> {
  // Implementation goes here...
  String toString() => "Instance of 'Foo<$T>'";
}

class Extender extends SomeBaseClass {}

// using 'SomeBaseClass' or any of its subtypes as the generic argument
var someBaseClassFoo = Foo<SomeBaseClass>();
var extenderFoo = Foo<Extender>();

// specifying no generic argument
var foo = Foo();
void main() {
  print(foo); // Instance of 'Foo<SomeBaseClass>'
}

// this gives an error because it's a non-SomeBaseClass type or subtype
// var foo = Foo<Object>();

// using generic methods
T first<T>(List<T> ts) {
  // Do some initial work or error checking, then...
  T tmp = ts[0];
  // Do some additional checking or processing...
  return tmp;
}
// Here the generic type parameter on first (<T>) allows you to use the type argument T in several places:
    // In the function's return type (T).
    // In the type of an argument (List<T>).
    // In the type of a local variable (T tmp).
