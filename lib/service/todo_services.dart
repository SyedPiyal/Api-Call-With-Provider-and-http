import 'dart:convert';

import 'package:apicall/model/todo.dart';
import 'package:http/http.dart' as http;

// This class represents a service to fetch Todo items.
class TodoService {
  // Method to asynchronously retrieve all Todo items.
  Future<List<Todo>> getAll() async {
    // Define the URL for the Todo API.
    const url = 'https://jsonplaceholder.typicode.com/todos';

    // Parse the URL into a Uri object.
    final uri = Uri.parse(url);

    // Send a GET request to the API and wait for the response.
    final response = await http.get(uri);

    // Check if the response status code is successful (200).
    if (response.statusCode == 200) {
      // Decode the response body from JSON format.
      final json = jsonDecode(response.body) as List;

      // Map the JSON data to Todo objects.
      final todos = json.map((e) {
        return Todo(
          id: e['id'], // Extract Todo id.
          title: e['title'], // Extract Todo title.
          userId: e['userId'], // Extract Todo user id.
          completed: e['completed'], // Extract Todo completion status.
        );
      }).toList(); // Convert the mapped data to a list.

      // Return the list of Todo items.
      return todos;
    }

    // If the response status code is not successful, return an empty list.
    return [];
  }
}
