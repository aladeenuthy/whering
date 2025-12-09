# Whering

A Flutter interview task

## Prerequisites

Before running this project, ensure you have the following installed:

- **Flutter SDK** (version 3.32.8 or higher)
- **Dart SDK** (version 3.8.1 or higher, included with Flutter)

## Getting Started

### 1. Clone the Repository

```bash
git clone <repository-url>
cd whering
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Generate Code (Freezed Models)

This project uses `freezed` and `json_serializable` for code generation. Run:

```bash
dart run build_runner build --delete-conflicting-outputs
```

Or use `watch` for continuous generation during development:

```bash
dart run build_runner watch --delete-conflicting-outputs
```

## Running the App

### Run on a Connected Device or Emulator

```bash
flutter run
```

## Project Structure

```
lib/
├── core/           # Core utilities, themes, constants
├── features/       # Feature modules
└── main.dart       # App entry point
```