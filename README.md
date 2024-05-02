# Pagination

## 📔 Overview

This Flutter application showcases three different types of pagination while fetching some products from an API

## 📹 Showcases

### First type: Infinite scrolling [With data caching to prevent redundant loading, Without removal of old data].

<img src="https://github.com/ahmadelbaz/live_assessment/assets/31745846/2aacb31c-6afd-468e-af89-611f08d8051c" width="250" />

### Second type: Infinite scrolling [with removal of old data] -> Displays only 20 products at a time. (No data cashing here).

<img src="https://github.com/ahmadelbaz/live_assessment/assets/31745846/da4bf84f-f988-47fc-bbda-f0936c5268f8" width="250" />

### Third type: Pagination without scrolling, only pages [We have added the UI, but due to a lack of time, it is still not functional] -> It should display only 20 products per page.

<img src="https://github.com/ahmadelbaz/live_assessment/assets/31745846/ceb1d1f5-f2f4-49f0-8fd0-728ef0637a93" width="250" />


### Switch between Dark and Light modes

<img src="https://github.com/ahmadelbaz/live_assessment/assets/31745846/c2a7dbcd-f15e-45e2-af04-61ec0426ad28" width="250" />

## 📖 How to Use

You can try the Android version [APK] 📱 : [Click to download apk file](https://www.dropbox.com/scl/fi/qpthxdmsypdtuh6afgk5m/pagination_assessment.apk?rlkey=edf5b1g2hpwpceep6qpvhwiwn&st=m5vu97xv&dl=1)

To get and run the code :

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/ahmadelbaz/live_assessment.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

## ⭐ Features

* Dynamic Data Fetching.
* Showcases three different types of pagination (Some are still incomplete).
* Data caching (Not implemented in all types).
* Dark/Light themes.
* State management with GetX.
* Fetching data from API using Dio.
* Loading animation with flutter_spinkit.

### 🌠 Up-Coming Features:

* Complete all pagination types.
* Implement data caching universally and handle it in a better way.
* Enhance responsiveness.
* Add shimmer effect for images.
* Store user-preferred theme in local storage.
* UI enhancements.
* More extensive testing and CI/CD integration.
* Support Internationalization.
* Add Splash screen.
* Consider adding an Onboarding screen.

### 📚 Libraries & Tools Used

* dio
* get
* flutter_spinkit
* path_provider

## 💻 System Design [We draw this using Miro app]

<img src="https://github.com/ahmadelbaz/live_assessment/assets/31745846/085ae7ba-5611-4a94-bdd5-6f6d07b18a16" width="250" />


