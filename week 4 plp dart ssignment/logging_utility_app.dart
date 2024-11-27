import 'dart:io';

void main() {
  print("Welcome to the Dart Utility Application!");

  // List to store results and log dates
  List<Map<String, dynamic>> logs = [];

  while (true) {
    print("\n--- Main Menu ---");
    print("1. Manipulate a String");
    print("2. View All Logs");
    print("3. Exit");
    stdout.write("Choose an option (1/2/3): ");
    String? choice = stdin.readLineSync();

    if (choice == "1") {
      // String Manipulation
      manipulateString(logs);
    } else if (choice == "2") {
      // View Logs
      viewLogs(logs);
    } else if (choice == "3") {
      print("Exiting the application. Goodbye!");
      break;
    } else {
      print("Invalid choice. Please try again.");
    }
  }
}

// Function to manipulate a string
void manipulateString(List<Map<String, dynamic>> logs) {
  stdout.write("\nEnter a string to manipulate: ");
  String? userInput = stdin.readLineSync();

  if (userInput == null || userInput.isEmpty) {
    print("Input cannot be empty.");
    return;
  }

  // Perform manipulations
  String reversed = userInput.split('').reversed.join('');
  String uppercased = userInput.toUpperCase();
  String lowercased = userInput.toLowerCase();

  // Display results
  print("\n--- Manipulation Results ---");
  print("Original: $userInput");
  print("Reversed: $reversed");
  print("Uppercase: $uppercased");
  print("Lowercase: $lowercased");

  // Log the results
  logs.add({
    "input": userInput,
    "reversed": reversed,
    "uppercased": uppercased,
    "lowercased": lowercased,
    "timestamp": DateTime.now().toString(),
  });
  print("\nResults logged successfully!");
}

// Function to view all logs
void viewLogs(List<Map<String, dynamic>> logs) {
  print("\n--- Logs ---");

  if (logs.isEmpty) {
    print("No logs available.");
    return;
  }

  for (int i = 0; i < logs.length; i++) {
    Map<String, dynamic> log = logs[i];
    print("\nLog #${i + 1}:");
    print("Input: ${log['input']}");
    print("Reversed: ${log['reversed']}");
    print("Uppercase: ${log['uppercased']}");
    print("Lowercase: ${log['lowercased']}");
    print("Timestamp: ${log['timestamp']}");
  }
}
