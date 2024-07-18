void main() {
  // variables
  var name = 'Alice'; // type inferred
  String city = 'Wonderland'; // explicitly typed
  int age = 30;
  double height = 5.9; // double = float (in Python)
  bool isStudent = false;

  // constants
  const pi = 3.14; // compile-time constant
  final currentTime = DateTime.now(); // runtime constant

  // implementation of functions
  int result = add(3, 4);
  print(result); // 7

  // if-else statements
  int num = 10;

  if (num > 0) {
    print('Positive');
  } else if (num < 0) {
    print('Negative');
  } else {
    print('Zero');
  }

  // switch cases
  var grade = 'A';

  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Good');
      break;
    case 'C':
      print('Fair');
      break;
    case 'D':
      print('Poor');
      break;
    default:
      print('Fail');
  }
}

// functions
int add(int a, int b) {
  return a + b;
}
