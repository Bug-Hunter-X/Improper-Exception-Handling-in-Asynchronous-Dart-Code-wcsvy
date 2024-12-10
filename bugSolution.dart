```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      //For example
      print(jsonData);
    } else {
      // Error!
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    // Handle JSON format exceptions specifically
    print('JSON format error: $e');
  } catch (e) {
    // Handle other exceptions
    print('An error occurred: $e');
    // Consider more sophisticated error handling here, like logging or retry logic
  }
}
```