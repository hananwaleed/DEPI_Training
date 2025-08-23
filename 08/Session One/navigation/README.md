

## Why Navigation Matters  
Good navigation creates a smooth user experience by making it simple for users to move through different parts of an app with the least number of taps.  

---

## Navigator in Flutter  
- The **Navigator widget** manages a stack of pages (routes).  
- It allows moving between pages and passing data forward and backward.  
- Navigation can be done using `push`, `pushNamed`, and `pop`.  
- Flutter automatically uses platform-specific navigation animations for iOS and Android.  
- Navigation can also return results back to the previous screen.  

---

## Building a Navigator App  
A sample app demonstrates navigation with:  
- **Home Page**: shows text with the current selection.  
- **Floating Action Button**: opens a "Gratitude Page".  
- **Gratitude Page**: lets the user select from options (e.g., Family, Friends, Coffee) using Radio buttons and return the choice back to Home.  
- **About Page**: opened from an AppBar action button as a fullscreen modal dialog.  

Key points:  
- Data can be sent when navigating forward.  
- Data can also be returned when navigating back with `pop`.  
- SafeArea and Padding are used for consistent layout.  

---

## About Page  
- Implemented as a simple Stateless page.  
- Contains an AppBar with a title and a body showing descriptive text.  
- Opened using `Navigator.push` with a fullscreen modal option.  

---

## Gratitude Page  
- Implemented as a Stateful page because it updates its state based on user input.  
- Displays Radio buttons with labels (Family, Friends, Coffee).  
- The selected value is passed back to the Home Page when the user confirms.  
- Uses state management with `setState` to update the currently selected option.  

---

## Named Routes  
- Instead of directly pushing routes with MaterialPageRoute, Flutter also supports **named routes**.  
- Routes are defined inside the `MaterialApp` routes map.  
- Navigation is done by calling `Navigator.pushNamed` with the route name (e.g., `/about`).  

---

## Bottom Navigation Bar  
- A bar at the bottom of the app for quickly switching between major sections.  
- Usually has 3–5 items, each with an icon and label.  
- Only one item can be active at a time.  
- Tapping an item changes the currently active view.  

---

## Drawer Widget  
- A side navigation panel that slides in from the edge of the screen.  
- Typically used for global navigation in apps.  
- Contains three main parts: header, body, and footer.  
- Items inside the drawer link to different app destinations.  
- Often includes a DrawerHeader with user information or branding.  

---

## Summary  
- Navigation in Flutter is managed by the **Navigator widget** and routes.  
- You can navigate using push/pop or named routes.  
- Data can be passed between screens in both directions.  
- Common navigation patterns include:  
  - **Modal dialogs** (fullscreen pages).  
  - **BottomNavigationBar** for quick access.  
  - **Drawer widget** for global navigation.  
- Good navigation design makes the app intuitive and user-friendly.  
