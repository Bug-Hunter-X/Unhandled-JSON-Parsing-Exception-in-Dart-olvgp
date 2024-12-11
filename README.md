# Unhandled JSON Parsing Exception in Dart

This repository demonstrates a common error in Dart applications: failing to gracefully handle potential exceptions during JSON parsing.  The `bug.dart` file contains code that attempts to access a JSON key without checking for its existence, leading to a runtime error if the key is missing.  The `bugSolution.dart` file provides a corrected version of the code that handles this scenario appropriately.  The corrected code checks if the key exists before attempting to access it. This prevents runtime crashes and improves the robustness of the application.

## How to reproduce the bug:
1. Clone this repository.
2. Run `bug.dart`.
3. Observe the runtime error when the key 'someKey' is missing or the API call fails.

## Solution:
The `bugSolution.dart` file shows the corrected implementation which robustly handles potential exceptions, making the application more reliable and preventing unexpected crashes.