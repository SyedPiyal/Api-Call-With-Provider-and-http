import 'package:apicall/service/todo_services.dart';
import 'package:flutter/foundation.dart';

import '../model/todo.dart';

// This class represents a provider for Todo items.
class TodoProvider extends ChangeNotifier {
  // Create an instance of the TodoService to interact with the API.
  final _service = TodoService();

  // Boolean flag to indicate whether data is currently being loaded.
  bool isLoading = false;

  // Internal list to hold Todo items.
  List<Todo> _todos = [];

  // Getter method to access the list of Todo items.
  List<Todo> get todos => _todos;

  // Method to asynchronously fetch all Todo items.
  Future<void> getAllTodos() async {
    // Set isLoading flag to true to indicate data loading.
    isLoading = true;

    // Notify listeners (e.g., UI) that the state has changed.
    notifyListeners();

    // Fetch Todo items from the TodoService.
    final response = await _service.getAll();

    // Update the internal list of Todo items with the fetched data.
    _todos = response;

    // Set isLoading flag to false as data loading is complete.
    isLoading = false;

    // Notify listeners that the state has changed.
    notifyListeners();
  }
}
