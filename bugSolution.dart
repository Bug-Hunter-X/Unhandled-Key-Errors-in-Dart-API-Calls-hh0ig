```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      // Check if the key exists before accessing it
      if (jsonResponse.containsKey('someKey')) {
        print(jsonResponse['someKey']);
      } else {
        print('someKey not found in the response');
        // Handle the case where the key is missing
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle exceptions appropriately
  }
}
```