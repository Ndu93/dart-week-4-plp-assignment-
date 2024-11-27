import 'dart:io'; // For file handling

void main() {
  print("Welcome to the Simplified Dart Utility Application!");

  // String Manipulation
  simpleStringManipulation();

  // Collections
  simpleCollectionsExample();

  // File Handling
  simpleFileHandling();

  // Date and Time
  simpleDateAndTimeExample();
}

// String Manipulation
void simpleStringManipulation() {
  print("\n--- String Manipulation ---");

  String text = "Hello Dart!";
  print("Original Text: $text");

  // Concatenation
  String newText = text + " Programming is fun!";
  print("Concatenated Text: $newText");

  // Changing case
  print("Uppercase: ${newText.toUpperCase()}");
  print("Lowercase: ${newText.toLowerCase()}");
}

// Collections Example
void simpleCollectionsExample() {
  print("\n--- Collections ---");

  // List Example
  List<String> fruits = ["Apple", "Banana", "Cherry"];
  print("List of Fruits: $fruits");

  // Adding an item
  fruits.add("Mango");
  print("Updated List: $fruits");

  // Map Example
  Map<String, int> scores = {"Alice": 90, "Bob": 85};
  print("Scores Map: $scores");

  // Adding a new key-value pair
  scores["Charlie"] = 95;
  print("Updated Scores Map: $scores");
}

// File Handling Example
void simpleFileHandling() {
  print("\n--- File Handling ---");

  String fileName = "example.txt";

  // Writing to a file
  File file = File(fileName);
  file.writeAsStringSync("Hello, this is a test file.\nLearning Dart is fun!");
  print("File written successfully.");

  // Reading from the file
  String fileContent = file.readAsStringSync();
  print("File Content:\n$fileContent");
}

// Date and Time Example
void simpleDateAndTimeExample() {
  print("\n--- Date and Time ---");

  DateTime now = DateTime.now();
  print("Current Date and Time: $now");

  // Formatting Date
  String formattedDate = "${now.day}/${now.month}/${now.year}";
  print("Formatted Date: $formattedDate");
}
