# Klontong Mobile App

This project is a technical test by BRIK. It is a mobile application for a small convenience store, "Klontong," to manage their products online. It is built with Flutter and follows modern app development best practices.

## Project Structure

The project follows a feature-based architecture, with a clear separation of concerns between the data, domain, and presentation layers.

- `lib/`: Contains the main application code.
  - `app/`: Core application setup and initialization.
  - `core/`: Shared components, utilities, and foundational services.
    - `data/`: Data sources, repositories, and models.
    - `domain/`: Business logic and use cases.
    - `presentation/`: UI components, themes, and navigation.
  - `features/`: Individual feature modules (e.g., `auth`, `general`).
  - `di.dart`: Dependency injection setup using `get_it`.
  - `main.dart`: The main entry point of the application.
- `assets/`: Static assets, such as images and icons.
- `test/`: Unit and widget tests.

## Key Dependencies

This boilerplate comes pre-configured with a set of essential packages to streamline development:

- **State Management:** `flutter_bloc` for predictable state management.
- **Dependency Injection:** `get_it` for service locator-based dependency injection.
- **Networking:** `dio` for robust network requests, with caching and certificate pinning.
- **Navigation:** A custom `AppNavigator` for declarative routing.
- **UI:**
  - `flutter_screenutil` for responsive UI design.
  - `flex_color_scheme` for flexible and customizable color schemes.
- **Local Storage:**
  - `shared_preferences` for simple key-value storage.
  - `objectbox` for efficient local database management.
- **Error Reporting:** `sentry_flutter` for real-time error monitoring.

For a complete list of dependencies, see the `pubspec.yaml` file.
