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
  description = 'Supercalifragaliciousexpialidocious!';
  print(description);
}
