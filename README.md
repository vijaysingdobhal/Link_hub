# Linkhub

Linkhub is a simple and effective link management application built using Flutter. This project is designed to help users organize and access their links quickly and efficiently. The app is free, open-source, and ad-free, featuring folder creation with customizable colors, automatic sorting based on usage, and multiple language support.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Setup and Installation](#setup-and-installation)
- [Screenshots](#screenshots)
- [License](#license)

## Introduction
Linkhub allows users to manage their links by organizing them into customizable folders. It supports automatic sorting based on link usage and provides features like import/export in JSON format and one-click copying, editing, and opening. The app is designed to be user-friendly and efficient, making link management easy.

## Features
- Create and organize links into folders with customizable colors
- Automatic sorting of links based on usage
- Multi-language support (e.g., Arabic, English, German, Chinese, Vietnamese, Russian)
- Import and export links in JSON format
- Dark theme support
- Widget support for pinned links
- One-click link copying, editing, and opening

## Technologies Used
- **Flutter**: For building the cross-platform app
- **Firebase**: Used for authentication and real-time database
- **Dart**: Programming language for Flutter
- **Google Cloud**: Integrated services for better user management

## Setup and Installation
1. Clone this repository:
    ```bash
    git clone https://github.com/vijaysingdobhal/linkhub.git
    ```
2. Navigate to the project directory:
    ```bash
    cd linkhub
    ```
3. Install dependencies:
    ```bash
    flutter pub get
    ```
4. Configure Firebase:
   - Add `google-services.json` (Android) and `GoogleService-Info.plist` (iOS) files to the respective directories.

5. Run the app:
    ```bash
    flutter run
    ```

## Screenshots
![Home Screen](https://private-user-images.githubusercontent.com/92155070/384667312-349ed6e9-c319-44ca-b57b-46a9df4c5814.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MzEyMjI5NDMsIm5iZiI6MTczMTIyMjY0MywicGF0aCI6Ii85MjE1NTA3MC8zODQ2NjczMTItMzQ5ZWQ2ZTktYzMxOS00NGNhLWI1N2ItNDZhOWRmNGM1ODE0LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDExMTAlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQxMTEwVDA3MTA0M1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTJjYmMxN2E1Mjc1ZGMyM2U3NWQ5ZDE2OTEyOWY0NzRlYTI4NDg0ZmM1ZjQ2NTlmYTczOTlhYTNjNDBiMjg0MDkmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.1fqoiVd_x6EPjrE7p-7m_rkIwRU1tNBfLaAO7iaONTU)
![Add Link](https://private-user-images.githubusercontent.com/92155070/384667319-51820446-adc1-4676-882a-61268a6e4bac.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MzEyMjI5NDMsIm5iZiI6MTczMTIyMjY0MywicGF0aCI6Ii85MjE1NTA3MC8zODQ2NjczMTktNTE4MjA0NDYtYWRjMS00Njc2LTg4MmEtNjEyNjhhNmU0YmFjLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDExMTAlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQxMTEwVDA3MTA0M1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTAyMzU3NWM1MzQ5ZjRhNjE2MzkyYzAzZWI0NGEyMTQxN2IxOGRiY2NjY2IyNzNjYzc5YmFlMWMzYWY0MDhkODMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.Pzjp03x1sd0Io_CB4y7fcy-YpIXFBpT_G_Xq1b3F89M)
![Folder View](https://private-user-images.githubusercontent.com/92155070/384667333-6ebada89-98f7-4688-9254-6912cb08fdd7.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MzEyMjI5NDMsIm5iZiI6MTczMTIyMjY0MywicGF0aCI6Ii85MjE1NTA3MC8zODQ2NjczMzMtNmViYWRhODktOThmNy00Njg4LTkyNTQtNjkxMmNiMDhmZGQ3LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDExMTAlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQxMTEwVDA3MTA0M1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTZkZWQ4M2JjNDZiZjdjNGJjYTZlYjJlMmRmY2M3ZDIwNGFkODljMDAzY2ZmOTBiMmQ4MDU5NWExMTg4ZmY4MjImWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.ZRzQz3s_a5OogLW7r19Hgzlz7Y1n-4jfU0c7AsXYcsM)
![Database](https://private-user-images.githubusercontent.com/92155070/384667346-4ae0d913-55bd-4660-b578-5acadd7602ce.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MzEyMjI5NDMsIm5iZiI6MTczMTIyMjY0MywicGF0aCI6Ii85MjE1NTA3MC8zODQ2NjczNDYtNGFlMGQ5MTMtNTViZC00NjYwLWI1NzgtNWFjYWRkNzYwMmNlLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDExMTAlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQxMTEwVDA3MTA0M1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWVkMjk5MjFmYzQ2ODVjMTVmNWJiMGYyOGMyM2ZhNGYzMjI0NjBiMDM0ZDllM2IxMDQ4Yjg0NThjNzU1MmQyZDUmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.g2nDhTMaAQeQc5cEy-W7tDqLLii2Guyh9tBhZ60VYfU)

*Add more screenshots as needed*

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

---

Feel free to contribute, open issues, and make pull requests!


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
