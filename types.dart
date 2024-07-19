void printInts(List<int> a) => print(a);

void main() {
  final list = <int>[]; // MUST include '<int>c'
  list.add(1);
  list.add(2);
  printInts(list);
}

class Animal {
  void chase(Animal a) { }
  Animal get parent => ...;
}

// For a consumer (such as the chase(Animal) method), you can replace the parameter type with a supertype. (eg `Object`)
// For a producer (such as the parent getter method), you can replace the return type with a subtype. (eg `HoneyBadger`)

class HoneyBadger extends Animal {
  @override
  void chase(Object a) {  } // a Honey Badger can chase anything, so we can replace 'Animal' with 'Object'

  @override
  HoneyBadger get parent => ... // must be HoneyBadger, not any other unrelated type
}

/// the following will not work
// class Mouse extends Animal { }

// class Cat extends Animal {
//   @override
//   void chase(Mouse a) { }
// }
// this should be:
class Cat extends Animal {
    @override
    void chase(Animal a) { }
}

// type inference
Map<String, dynamic> arguments = {'argA': 'hello', 'argB': 42};
// this is the same thing as:
var args = {'argA': 'hello', 'argB': 42}; // Map<String, Object>

// local variable inference
num y = 3; // A num can be double or int. This cannot be `var` because x is inferred as int

void main1() {
    y = 4.0;
}

// type argument inference
// Inferred as if you wrote <int>[].
List<int> listOfInt = [];

// Inferred as if you wrote <double>[3.0].
var listOfDouble = [3.0];

// Inferred as Iterable<int>.
var ints = listOfDouble.map((x) => x.toInt());

// simple type assignment
// setting up:
class MaineCoon extends Cat {
    @override
    chase(Animal a) { }
}

void main2() {
    Cat a = Cat();
    Animal b = Cat();

    // not allowed:
    // MaineCoon c = Cat();
    // instead:
    Cat c = MaineCoon();
}

// generic type assignment
List<MaineCoon> myMaineCoons = [];
List<Cat> myCats = myMaineCoons;

// the following is not possible:
// List<Animal> myAnimals = [];
// List<Cat> myCats = myAnimals;
// BUT the following IS:
List<Animal> myAnimals = [];
List<Cat> Cats = myAnimals as List<Cat>;
