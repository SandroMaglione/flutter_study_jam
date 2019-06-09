# Flutter Project

The flutter project we created during the workshop.

[**Click here to see an example gif of the app**](https://www.sandromaglione.com/images/flutter_study_jam_gdg_08_june_2019.gif)

The original app has three screens.

The main screen (**HomePage**) displays a [Card](https://api.flutter.dev/flutter/material/Card-class.html) with three [Row](https://api.flutter.dev/flutter/widgets/Row-class.html)(s). When you tap on the Card, you are redirected using a [Navigator](https://api.flutter.dev/flutter/widgets/Navigator-class.html) to another screen (**DetailsPage**) using a [Hero](https://api.flutter.dev/flutter/widgets/Hero-class.html) animation.

The second screen has an [Image](https://api.flutter.dev/flutter/widgets/Image-class.html) ([from asset](https://api.flutter.dev/flutter/widgets/Image/Image.asset.html)) and some [Text](https://api.flutter.dev/flutter/widgets/Text-class.html) below it inside a [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html).

The third screen (**SetupPage**) is accessible from the [AppBar](https://api.flutter.dev/flutter/material/AppBar-class.html) [leading](https://api.flutter.dev/flutter/material/AppBar/leading.html) of the main screen. It features a [TextField](https://api.flutter.dev/flutter/material/TextField-class.html) and a [RaisedButton](https://api.flutter.dev/flutter/material/RaisedButton-class.html). When you click on the RaisedButton, the text you wrote in the input field will be displayed on a [SnackBar](https://api.flutter.dev/flutter/material/SnackBar-class.html) on the homepage screen.

## Getting Started (Flutter Docs)

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)
- [Flutter SDK](https://api.flutter.dev/index.html)

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
