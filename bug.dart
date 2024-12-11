```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!  Do something with the data.
      final jsonData = jsonDecode(response.body);
      print(jsonData['someKey']); //This might throw an error if 'someKey' is not found
    } else {
      // Handle errors here
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions, including network errors
    print('Error: $e');
    rethrow; //Re-throwing to allow handling further up the call stack
  }
}
```