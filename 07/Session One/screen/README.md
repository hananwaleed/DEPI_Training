

## 📝 Overview

This project covers:

- **ListTile** for displaying user information (profile picture, name, welcome message).
- **GridView.builder** for showing products in a grid layout.
- **InkWell** & **GestureDetector** for touch interactions.
- **flutter_screenutil** for building a responsive UI that works on all screen sizes.
- **Adaptive UI** to adjust the design based on the platform (Android / iOS).

---

## 🛠 Widgets & Packages Used

### 1. ListTile
A built-in widget for displaying:
- **Leading**: Image or icon on the left.
- **Title**: Main text.
- **Subtitle**: Secondary text.
- **Trailing**: Icon or action button on the right.

**Example in this project:**
- Leading: Profile picture (`CircleAvatar`)
- Title: User name
- Subtitle: Welcome message
- Trailing: Notification icon

---

### 2. GridView.builder
An efficient way to display multiple items in a grid.
- **SliverGridDelegateWithFixedCrossAxisCount**: Controls number of columns.
- `itemBuilder`: Creates each item widget dynamically.

**Example in this project:**
- Displays a list of products with name, price, and an icon.

---

### 3. InkWell
A widget that provides a **ripple effect** when tapped.
- Commonly used for clickable items in Material Design.
- Detects **single taps** and gives visual feedback.

---

### 4. GestureDetector
Detects various user gestures:
- **onTap** → Single tap
- **onDoubleTap** → Double tap
- **onPanUpdate** → Drag/swipe detection

**Example in this project:**
- Single tap → Prints product click in the console.
- Double tap → Prints "Product tapped" in the console.

---

### 5. flutter_screenutil
A package for making **responsive UI** in Flutter.
- Uses relative sizes instead of fixed pixels.
- `ScreenUtilInit` is added in **main.dart**.
- Use `.h` (height), `.w` (width), `.sp` (font size), and `.r` (radius) instead of static values.

---

### 6. Responsive vs Adaptive UI

**Responsive UI**
- Adjusts elements **proportionally** to different screen sizes.
- Same layout, but scales components (font, padding, spacing).
- Example: `flutter_screenutil` makes buttons bigger on large screens and smaller on small ones.

**Adaptive UI**
- Changes the **design or layout** based on the platform/device type.
- Example:  
  - Android → Material Design buttons.  
  - iOS → Cupertino-style buttons.
- Can also adapt based on orientation (portrait/landscape).

---
## 📸 Screenshots

![App Screenshot](assets\screen.png)

