# Tap Invest - Flutter Mobile Developer Assignment

This repository contains the source code for the Flutter mobile developer assignment for Tap Invest. The application was built to meet all the requirements outlined in the assignment, including pixel-perfect UI, state management, API integration, and bonus features.

---

## 🚀 Features

*   **Bond Listing & Search:** A clean home screen that fetches and displays a list of investment bonds from the API. Users can instantly search the list by either **Issuer Name** or **ISIN**.
*   **Dynamic Highlighting:** The search query dynamically highlights matching text in the search results for an intuitive user experience.
*   **Detailed Bond View:** Tapping a bond opens a detailed view with two main sections:
    *   **ISIN Analysis:** Displays company information, financial charts, and detailed issuer data.
    *   **Pros & Cons:** A clear, easy-to-read list of the investment's pros and cons.
*   **Interactive Financial Charts:** A dynamic bar chart visualizes company financials. Users can toggle between **EBITDA** and **Revenue** data, which is represented in a two-toned bar format for easy comparison.
*   **Haptic Feedback:** Subtle physical feedback is provided on user interactions (taps, toggles) to enhance the user experience on physical devices.
*   **Polished UI & Custom Icon:** The UI has been carefully crafted to be a pixel-perfect reproduction of the Figma designs, complete with a custom, modern app icon.

---

## 🛠️ Technical Implementation

This project was built with a modern, scalable, and testable architecture.

*   **State Management:** **BLoC (Business Logic Component)** was chosen for state management to separate business logic from the UI, resulting in clean, predictable state changes. Events are dispatched from the UI, and the BLoC responds with new states.

*   **Architecture:** The project follows a feature-first, clean architecture pattern. Code is organized into three main layers for the `invest` feature:
    *   **Data Layer:** Handles all data operations, including the API service for network requests (`dio`) and data models (`freezed`).
    *   **Domain Layer (Conceptual):** The BLoC acts as the bridge, containing all the business rules and logic.
    *   **Presentation Layer:** Contains all Flutter widgets, screens, and UI-related logic.

*   **Dependency Injection:** **`get_it`** and **`injectable`** are used to manage dependencies, making the app modular and easy to test by allowing for easy mocking of services like the `BondApiService`.

*   **Immutability & Code Generation:** **`freezed`** is used to create immutable data models and state classes, which helps prevent bugs and makes state management more reliable.

*   **Unit Testing:** The project includes a suite of unit tests to ensure the reliability and correctness of the core business logic.
    *   **BLoC Testing (`bloc_test`):** The `BondBloc` is thoroughly tested to verify that correct states are emitted in response to events (e.g., successful fetch, search query change, API failure).
    *   **Model Testing:** Tests confirm that the data models correctly parse JSON from the API.
    *   **Mocking (`mocktail`):** The API service is mocked during tests to isolate the BLoC and test its logic without making real network calls.

---

## Screenshots & Demo

*A great addition here is to add a screen recording of your app flow. You can upload it as a GIF to your repository and embed it here.*

**[Demo Video - Click to Play]** *(Link to a screen recording or embed a GIF here)*

| Home Screen                | Search Results                | Detail Screen (Analysis)     | Detail Screen (Pros & Cons)  |
| -------------------------- | ----------------------------- | ---------------------------- | ---------------------------- |
| *[Insert Screenshot of Home Page]* | *[Insert Screenshot of Search]* | *[Insert Screenshot of Detail Page 1]* | *[Insert Screenshot of Detail Page 2]* |

---

## Setup and Run the Project

**1. Prerequisites:**
   - Flutter SDK (latest stable version)
   - Android Studio / VS Code

**2. Clone the repository:**
   ```bash
   git clone [Your GitHub Repository URL]
   cd tap_invest_app
   ```

**3. Install dependencies:**
   ```bash
   flutter pub get
   ```

**4. Run the code generator (for `freezed` and `injectable`):**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

**5. Run the app:**
   ```bash
   flutter run
   ```

**6. Run the unit tests:**
   To verify the core logic, run the included tests from the terminal:
   ```bash
   flutter test
   ```

---

Thank you for the opportunity. I enjoyed working on this assignment and look forward to discussing it further.
```

### **Before You Finalize:**

*   **Replace Placeholders:** Make sure to replace `[Your GitHub Repository URL]` and the `*[Insert Screenshot...]*` placeholders with your actual content. Taking good screenshots is worth the time.
*   **Record a Demo:** A short screen recording (30-60 seconds) showing the app in action is incredibly effective. You can use tools on your Mac (QuickTime) or Windows (Xbox Game Bar), or an app like AZ Screen Recorder on Android. You can then convert the video to a GIF using a site like `ezgif.com` and embed it.

This README is comprehensive, professional, and directly addresses every part of the assignment, leaving no doubt about the quality of your work.
