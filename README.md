# AgriSphere

AgriSphere is a Flutter application scaffold targeting Android, iOS, web,
Windows, macOS, and Linux.

## Project structure

```text
lib/
  app/                 App entry widget and shared theme
  features/
    home/presentation/ Starter farm dashboard and its widgets
  main.dart            Application entry point
test/                  Widget tests
```

Add new screens and related UI under `lib/features/`, and put app-wide
configuration or shared styles under `lib/app/`.

## Requirements

- Flutter SDK (Dart 3.9.2 or newer)

## Getting started

Fetch dependencies and start the app on a connected device, simulator, or
desktop target:

```shell
flutter pub get
flutter run
```

Run the analyzer and widget tests with:

```shell
flutter analyze
flutter test
```
