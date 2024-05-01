# app_budget
The Budget app - Flutter application is structured into several Dart files to maintain a well-organized and modular codebase. In `components.dart`, reusable widgets like `OpenSans`, `Poppins`, and `TextForm` are defined for consistent text styling and input forms. Additionally, a `DialogBox` function is included for displaying dialog boxes throughout the app. 
 
The main features include:
Sure, here are the main points of the Flutter app's features:

1. User Authentication:
   - Registration with email/password.
   - Login with existing credentials.
   - Google sign-in option.

2. Expense Management:
   - Add and track expenses.
   - View total expenses and incomes.
   - Calculate remaining budget.

3. Responsive UI:
   - Layout adjusts based on device screen size.
   - Consistent user experience across devices.

4. Firebase Integration:
   - Authentication and Firestore database setup.
   - Secure handling of user data.

5. UI Components and Styling:
   - Reusable widgets for text styling and forms.
   - Dialog boxes for notifications.

6. Navigation and Interaction:
   - Drawer for app navigation.
   - App bar with options like refresh and logout.
   - Social media links for interaction.

7. State Management:
   - Efficient state handling with Riverpod.
   - Manage UI states for smooth interactions.

The `firebase_options.dart` file contains configurations specific to Firebase services, such as authentication and Firestore database setup, tailored for different platforms like Android, iOS, and web using the FlutterFire CLI.

In `main.dart`, the app's entry point is established. It initializes Firebase services, sets up the main app widget `MyApp`, and wraps it in a `ProviderScope` for managing app-wide state and dependencies.

The `responsive_handler.dart` file plays a crucial role in ensuring a responsive user interface. It determines whether to display the `ExpenseViewWeb` or `ExpenseViewMobile` based on the screen width, optimizing the app's layout for various devices.

`view_model.dart` is dedicated to the app's business logic. It handles user authentication, interacts with Firestore to manage expenses and incomes, and manages UI states for a seamless user experience.

Specifically, the `ExpenseViewMobile` and `ExpenseViewWeb` class focuses on presenting budget-related information such as expenses, incomes, and the remaining budget. It utilizes Riverpod's hooks for state management and integrates functionalities like fetching data, adding expenses and incomes, refreshing, logging out, and social media links.

On the other hand, the `LoginViewMobile` and `LoginViewWeb` class handles user authentication tasks. It includes text form fields for email and password, allows users to toggle password visibility, provides options for registration, login, and Google sign-in, and designs the UI using material buttons and text fields. This comprehensive approach ensures a user-friendly and functional budget management app with robust authentication capabilities.