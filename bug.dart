```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns JSON
      final jsonResponse = json.decode(response.body);
      // Access data from the JSON response
       print(jsonResponse['someKey']); //this line may cause error if 'someKey' is not present in all responses
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the exception appropriately
  }
}
```