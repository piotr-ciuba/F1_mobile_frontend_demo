
# F1 Flutter mobile demo

Project intention is to provide you with my implementation of well organized project structure, having in mind good practices and use of solutions described as recommended by the community when developing applications in flutter.

This small project includes many aspects like:

* State management with Bloc
* Usage of repositories and services
* Internationalization with AppLocalizations
* Dependency injection with get_it and injectable
* Model serialization with freezed and json_serializable
* Responsive design with flutter_screenutil
* REST communication with Dio
* Data pagination
* Model testing with mocked objects and json
* Unit testing for bloc, services and repositories
* Mocked dependencies for testing
* OnGenerate routing for in app navigation
* Defined common utilities and resources like AppImageFactory or AppColors
* In app webpage for external services

And probably more, since it's the demo only and just a showcase for how things can be done. That being said, the project may be good starting point for a complex solutions since its modularity is designed for ease of future maintenance.

## Simple design showing all the logic above in action
<p float="left">
<img src="https://github.com/user-attachments/assets/65f9dcab-44e9-4001-aba6-b1fac16c7f0e" width="180" height="390">
<img src="https://github.com/user-attachments/assets/d430af09-8054-4b5e-82b3-98aead2abaa1" width="180" height="390">
<img src="https://github.com/user-attachments/assets/0e7f52cd-ece2-4271-8a36-94eb05e48cf8" width="180" height="390">
<img src="https://github.com/user-attachments/assets/e448ffe2-cb80-4665-896c-1f0de2c9f189" width="180" height="390">
</p>
<p float="left">
<img src="https://github.com/user-attachments/assets/0d3257fa-a126-46f5-90d7-c2bf63aaa5be" width="180" height="390">
<img src="https://github.com/user-attachments/assets/cfda11cb-78b9-4cca-9c7d-ed504c0114ff" width="180" height="390">
<img src="https://github.com/user-attachments/assets/62dfd618-4e44-428f-bdb4-253f3bc11b52" width="180" height="390">
<img src="https://github.com/user-attachments/assets/e8a2a5f3-31e0-473b-a25e-62d6a3348980" width="180" height="390">
</p>

## Installation
### Android
For Android, there is a app.apk file in the root of the project. You can download it and install on your phone, just need to allow installation from different resources (non GooglePlay origin).

Alternatively you can build it on your own. You might need to install 

* Flutter
* Android Studio
* Android commmand line tools
* Create an emulator or plug in Anroid devices with drivers installed

Then run in a terminal commands:
* flutter pub get
* flutter pub run build_runner build 
* flutter gen-l10n 
* flutter run 

It should be installed on your selected target device.

There is official Flutter guidance on how to build apps so you can refer to it if neeeded: https://docs.flutter.dev/get-started/install

### iOS
For iOS, you need MacOS computer and you need to build it first. For physical iPhone or iPad installation there is needed Apple developer account with certificates set up, so it's recommended to do it on emulator.

The prerequisites are as for Android, but additionally you need:
* Cocoadpods
* XCode

There is official Flutter guidance on how to build apps so you can refer to it if neeeded: https://docs.flutter.dev/get-started/install
