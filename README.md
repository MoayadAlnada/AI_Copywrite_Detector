# AI Copyright Detector - Android App

This is a native Android application wrapper for the AI Copyright Detector tool.
It allows you to use the tool on your Android device by connecting either to the **Hugging Face Space** (default) or a **Local Server** running on your PC.

## 🚀 Features
- **WebView Interface**: Loads the full UI of the copyright detector.
- **File Upload Support**: Allows selecting images from the Android Gallery or Camera.
- **Configurable Backend**: Switch between the public cloud version and a private local server.
- **Clean UI**: Minimalist interface.

## 🛠️ Prerequisites
- **Android Studio** (Hedgehog or newer recommended).
- **JDK 17** (Embedded in Android Studio).
- **Python 3.10+** (If running local backend).

## ☁️ How to Build WITHOUT Android Studio (GitHub Actions)
If you do not have Android Studio, you can build the APK using GitHub's free cloud servers:

1.  **Run the script**: Double-click `push_to_github.bat` in this folder.
2.  Follow the on-screen instructions (it will ask you to create a repo and paste the URL).
3.  Once pushed, go to the **Actions** tab in your GitHub repository.
4.  You will see a workflow named "Android Build" running.
5.  Once finished (green checkmark), click on it and look for **Artifacts** at the bottom.
6.  Download **app-debug** (this is your APK file!).
7.  Transfer it to your phone and install.

## 📱 How to Build the APK (Locally with Android Studio)
1. Open **Android Studio**.
2. Select **Open** and navigate to this folder: `F:\my_brand\ai_copyright_detector\APKapp_ai_copyright_detector_tool`.
3. Wait for Gradle sync to complete.
4. Go to **Build** > **Build Bundle(s) / APK(s)** > **Build APK(s)**.
5. The APK will be generated in `app/build/outputs/apk/debug/app-debug.apk`.
   - *Note: For a release APK, you will need to Generate Signed Bundle / APK and create a keystore.*

## 🏠 How to Run with Local Server (Offline/Private Mode)
To use the app with your local PC's backend (faster, private):

1. **Start the Backend on PC**:
   Open a terminal in `F:\my_brand\ai_copyright_detector\HF_ai_copyright_detector_tool` and run:
   ```bash
   # Activate venv if needed
   .venv\Scripts\activate
   
   # Run server accessible from network
   # Make sure your Firewall allows python connection on port 8000
   python run_server.py
   ```
   *Note: The server is configured to listen on `0.0.0.0` by default, which is correct.*

2. **Find your PC's IP Address**:
   Run `ipconfig` in terminal. Look for **IPv4 Address** (e.g., `192.168.1.15`).

3. **Configure the App**:
   - Open the App on your phone.
   - If the default HF Space fails to load (or if you want to switch), **Back** button or look for the URL bar at the top (it appears on error).
   - Enter your PC's IP: `http://192.168.1.15:8000` (Replace with your actual IP).
   - Tap **Go**.

## 🔧 Troubleshooting
- **"Cleartext HTTP traffic not permitted"**: We have enabled this in `AndroidManifest.xml`, so local HTTP should work.
- **File Uploads not working**: Ensure you granted Storage/Camera permissions when asked.
- **Cannot connect to Local Server**:
    - Ensure PC and Phone are on the **same Wi-Fi**.
    - Check Windows Firewall (inbound rules for Python).
    - Try accessing the URL from Chrome on your phone to verify connectivity.
