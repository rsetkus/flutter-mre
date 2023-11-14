# How to reproduce
1. Set up Flutter version **3.10.6**
2. Execute command `flutter build apk --release`
3. Install application **build/app/outputs/flutter-apk/app-release.apk** to emulator or device

### Expected result
Application starts, prompts splash screen and then opens home page.

### Actual result
Application gets stuck at splash screen. Logcat outputs error `Error: Attempt to execute code removed by Dart AOT compiler (TFA)`.