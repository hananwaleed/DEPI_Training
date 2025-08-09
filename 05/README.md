# 📱 Flutter Training Notes

 Introduction to Flutter

### 1. What is Flutter?
Flutter is an open-source UI toolkit created by **Google** for building natively compiled, cross-platform applications from a single codebase. It uses the **Dart** programming language.

**Key Features:**
- Cross-platform (Android, iOS, Web, Desktop).
- High performance using the **Skia** rendering engine.
- Hot Reload for fast development and testing.

---

### 2. Defining Widgets and Elements
- **Widget**: The fundamental building block of a Flutter application. Everything in Flutter is a widget, including layouts, text, and images.
- **Element**: The link between a widget and the rendered user interface on the screen.

---

### 3. Stateless and Stateful Widgets Lifecycle

#### StatelessWidget
- Displays static content that does not change during the app’s runtime.
- Lifecycle involves only the `build()` method.

#### StatefulWidget
- Displays content that can change over time due to user interaction or data updates.
- Typical lifecycle stages:
  1. **initState()** – called once when the widget is created.
  2. **build()** – renders the widget’s UI.
  3. **setState()** – updates the UI when state changes.
  4. **dispose()** – cleans up resources when the widget is removed.

---

### 4. Installing Flutter
1. Download the Flutter SDK from [flutter.dev](https://flutter.dev).
2. Extract it to your desired location.
3. Add the Flutter `bin` directory to your system PATH.
4. Verify the installation by running:
   ```bash
   flutter doctor
