# Tap Invest - Flutter Assignment Submission

Hi! This is my submission for the Flutter Developer assignment.

I've built the app to be a pixel-perfect match of the provided Figma designs, implementing all the required features and including bonuses like unit tests and haptic feedback.

---

## What it Does

* **Live Bond Search:** Fetches a list of bonds from the API and lets users search instantly by ISIN or company name.
* **Dynamic Highlighting:** The search text is highlighted in real-time within the results.
* **Detailed View:** A complete detail screen with two tabs:
  * **ISIN Analysis:** Shows company financials in an interactive chart and other key details.
  * **Pros & Cons:** A clean breakdown of investment benefits and risks.
* **Interactive Chart:** Users can toggle the financial chart between **EBITDA** and **Revenue** views.
* **Polished UX:** Haptic feedback on taps and a custom app icon make the app feel responsive and complete.

---

## Tech Stack & Architecture

Here's a quick look at the technical choices I made:

* **State Management:** Used **BLoC** to keep the business logic clean and separate from the UI.
* **Dependencies:** Managed with **`get_it`** and **`injectable`** to make the code modular and easy to test.
* **API & Models:** Used **Dio** for reliable network calls and **Freezed** to create robust, immutable models from the API's JSON.
* **Testing:** Wrote **unit tests** for the `BondBloc` and data models using `bloc_test` and `mocktail` to ensure the core logic is solid.

---

Thank you for the opportunity! I really enjoyed building this and look forward to hearing from you.
