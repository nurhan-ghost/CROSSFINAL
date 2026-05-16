# CROSSFINAL — Sneaker Store Application

CROSSFINAL is a Flutter-based sneaker store application developed as a final team project. The application demonstrates modern Flutter development concepts including Firebase integration, Riverpod state management, external API integration, responsive UI design, and e-commerce functionality.

---

## Features

- Firebase Authentication
- User Login and Registration
- Sneaker Product Catalog
- Dynamic Sneaker Search
- Category-Based Product Filtering
- Shopping Cart System
- Favorites System
- Order History
- Firebase Firestore Integration
- External Sneaker API Integration
- Responsive UI Design
- Riverpod State Management
- Theme and Color Customization

---

## Technologies Used

### Flutter Packages
- flutter_riverpod
- firebase_core
- firebase_auth
- cloud_firestore
- dio

### Backend Services
- Firebase Authentication
- Cloud Firestore
- External Sneaker API

---

## Project Structure

```bash
lib/
│
├── auth/
├── components/
├── data/services/
├── domain/entities/
├── models/
├── providers/
├── screens/
├── Color/
│
├── home.dart
├── main.dart
├── providers.dart
└── constants.dart
````

---

## Firebase Integration

Firebase Authentication was implemented for secure user registration and login functionality.

Cloud Firestore was used to:

* store sneaker order information
* save user order history
* manage authenticated user data

---

## API Integration

The application uses an external sneaker API together with the Dio package to dynamically load sneaker products including:

* product names
* sneaker images
* descriptions
* prices
* ratings

JSON responses are converted into Product model objects and displayed inside the application.

---

## Team Contributions

### Nurhan

* Project setup
* Home screen functionality
* Sneaker filtering system
* API service integration
* Search functionality
* Firebase integration

### Satbek

* UI components
* Profile screen
* Cart navigation
* Cart system
* Favorites system
* Application screens

---

## How to Run

1. Clone the repository

```bash
git clone https://github.com/nurhan-ghost/CROSSFINAL.git
```

2. Install dependencies

```bash
flutter pub get
```

3. Configure Firebase

Add your Firebase configuration files:

* `google-services.json`
* `firebase_options.dart`

4. Run the application

```bash
flutter run
```

---

## Conclusion

The CROSSFINAL Sneaker Store application demonstrates practical Flutter development skills including state management, Firebase integration, API networking, and responsive UI implementation. The project was developed collaboratively using GitHub and modern Flutter architecture principles.

```
```
