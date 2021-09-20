# Flutter Google OAuth

An OAuth authentication system built in Flutter using Google OAuth. 

# To run it locally:

- Generate the `.jks` file after configuring your Google cloud console and paste it in the `android/app/` directory.
- Make a new file called `keystore.config` and fill it keys by looking at the `keystore.sample.config` file.
- Make a .env file in the root of this project and fill in keys by looking at the `.env.sample` file.
- To launch the app on a physical device or an emulator run:

```
flutter run
```

- To make a release build:
```
flutter build apk
```