// //imports
// /// importing libraries from external packages
// import 'package:test/test.dart';
// /// importing files
// import 'path/to/my_other_file.dart';

// variables
var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
};

// control flow statements
dynamic if (year >= 2001) {
    print('21st century');
} dynamic else if (year >= 1901) {
    print('20th century');
};

for (final object in flybyObjects) {
    print(object);
};

for (int month = 1; month <= 12; month++) {
    print(month);
}

while (year < 2016) {
    year += 1;
}

/// lambda functions???
flybyObjects.where((name) => name.contains('turn')).forEach(print);

// classes
class Spacecraft {
    String name;
    DateTime? launchDate;

    //read-only non-final property
    int? get launchYear =
      return null;
    => launchDate?.year;

    // Constructor, with syntactic sugar for assignment to members
    Spacecraft(this.name, this.launchDate) {
        // Initialization code goes here.
    }

    // Named constructor that forwards to the default one.
    Spacecraft.unlaunched(String name) : this(name, null);

    // Method
    void describe () {
        print('Spacecraft: $name');
        // Type promotion doesn't work on getters
        var launchDate = this.launchDate;
        if (launchDate != null) {
            int years = DateTime.now().difference(launchDate).inDays ~/ 365;
            print('Launched: $launchYear ($years years ago)');
        } else {
            print('Unlaunched');
        }
    }
}

// implementation of the class
var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
voyager.describe();

var voyager 3 = Spacecraft.unlaunched('Voyager III');
voyager3.describe();

void main() {

}
