# My Favourite Place

Welcome to the **My Favourite Place** project! This Flutter app is all about capturing and revisiting your favorite locations. Whether it’s a serene beach, a cozy café, or a stunning viewpoint, this app helps you preserve those memories with images and map locations so you can relive them whenever you want.

## 📱 Project Overview

**My Favourite Place** is a mobile app built with Flutter, designed to save your favorite places along with photos and precise map locations. The app integrates with Google Maps for real-time location access and utilizes several powerful Flutter packages to provide a seamless and efficient user experience.

### Key Features

- **Real-Time Location Tracking**: Access and display the user's current location on an interactive map using the Geocoding API.
- **Capture and Save Moments**: Take photos of your favorite places directly within the app using the native camera, powered by the Image Picker package.
- **Persistent Data Storage**: Save your locations and photos locally using SQLite, ensuring they are preserved even after the app is closed.
- **User-Friendly Interface**: An intuitive design that makes it easy to add, view, and recall your favorite places.

## 🛠️ Packages Used

This project leverages several essential Flutter packages:

- **[Geocoding API](https://pub.dev/packages/geocoding)**: Converts addresses into geographic coordinates and vice versa, enabling location search and mapping.
- **[Google Maps](https://pub.dev/packages/google_maps_flutter)**: Integrates Google Maps into the app for real-time location tracking and map display.
- **[Image Picker](https://pub.dev/packages/image_picker)**: Enables users to capture images using the device’s camera or pick images from the gallery.
- **[SQLite](https://pub.dev/packages/sqflite)**: A Flutter plugin for SQLite, used for storing location data and images locally.
- **[Path Provider](https://pub.dev/packages/path_provider)**: Provides access to commonly used locations on the filesystem, such as the app's data directory, for storing images and data.

## 🚀 Getting Started

Ready to dive in? Follow these steps to get the app up and running on your local machine:

### Prerequisites

Before you begin, make sure you have the following installed:

- Flutter SDK
- Android Studio or Visual Studio Code
- An Android or iOS device/emulator for testing

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/my_favourite_place.git
   cd my_favourite_place
Install dependencies:

bash
Copy code
flutter pub get
Run the app:

bash
Copy code
flutter run
And just like that, you're ready to start saving your favorite places!

📂 Project Structure
Here's how the project is organized:

lib/main.dart: The main entry point of the application.

lib/screens/: Contains the screens for viewing and adding favorite places.

lib/widgets/: Custom widgets that enhance the UI and functionality.

lib/models/: Data models that represent places and their attributes.

lib/helpers/: Utility classes and functions for database operations and other background tasks.

assets/: Static assets like images and icons.

🌍 How It Works
The My Favourite Place app is designed with simplicity and functionality in mind:

Accessing Location: The app uses the Geocoding API to get the user's current location, which is then displayed on a Google Map within the app.
Capturing Images: Users can snap a photo of their favorite spot using the app’s camera feature, powered by the Image Picker package.
Saving Data: The captured image and location data are saved in a local SQLite database, ensuring they are accessible anytime, even offline.
Recalling Favorite Places: Users can view a list of their saved locations, tap to see them on the map, and recall memories with the accompanying photo.


🤝 Contributions
Contributions are more than welcome! Whether you want to suggest a new feature, report a bug, or improve the documentation, feel free to fork the project and submit a pull request. Let’s make this app even better together!
