# Weed Detection (crop-vision)

A Flutter / FlutterFlow app that identifies weeds and plant diseases from a photo and suggests control recommendations. Built as a computer-vision capstone project.

## Features

- Photo-based plant/weed identification
- AI-generated plant description and control recommendations (Groq API)
- Firebase backend for the web build

## Tech stack

- FlutterFlow / Flutter (Dart)
- Firebase (web + Android/iOS client config)
- Groq API (`mixtral-8x7b-32768`)

## Running locally

```bash
flutter pub get
flutter run
```

No API keys are committed. Provide them at build time:

```bash
flutter run --dart-define=GROQ_API_KEY=your_key --dart-define=FIREBASE_API_KEY=your_key
```

If you re-open this project in FlutterFlow, configure the Groq key as a secret in the FlutterFlow project so regenerated code does not embed it.

## Status

Educational project from 2024 — no longer maintained. The original hardcoded API keys were removed (repository history was rewritten); the Firebase project should be deleted or restricted by the owner.

## License

MIT