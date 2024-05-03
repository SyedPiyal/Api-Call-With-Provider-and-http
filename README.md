# Provider API Example

This is a simple Flutter application demonstrating the usage of the Provider package to manage state and fetch data from an API.

## Features

- Fetches Todo items from a mock API using the `http` package.
- Utilizes the Provider package to manage state and share data between widgets.
- Displays the fetched Todo items in a ListView with dynamic styling based on completion status.

## How to Run

To run this application, follow these steps:

1. Clone this repository to your local machine.
2. Navigate to the project directory.
3. Ensure you have Flutter installed on your machine.
4. Run `flutter pub get` to install dependencies.
5. Connect a device or start an emulator.
6. Run `flutter run` to launch the application.

## Files

- `lib/todo_service.dart`: Contains the TodoService class responsible for fetching Todo items from the API.
- `lib/todo_provider.dart`: Defines the TodoProvider class which manages the state of Todo items using the Provider package.
- `lib/main.dart`: Contains the main entry point of the application and defines the HomePage widget.

## Dependencies

- [Flutter](https://flutter.dev/)
- [Provider](https://pub.dev/packages/provider): A package for managing application state.
- [http](https://pub.dev/packages/http): A package for making HTTP requests.

## Credits

This project is inspired by the official Flutter documentation and various tutorials on state management with Provider.
