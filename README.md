# FFmpeg XCFrameworks & Podspec

This repository hosts:

- 📦 A custom **podspec** for FFmpeg.
- 🏗️ Precompiled **xcframeworks** for FFmpeg full GPL (after FFmpegKit deprecation).

The goal is to allow easy integration of FFmpeg into iOS projects via CocoaPods, without needing to compile FFmpeg manually.

---

## Why this repository?

FFmpegKit, which was a popular way to use FFmpeg on iOS, has been **deprecated**.  
To ensure ongoing support and integration, we:

- Compiled FFmpeg manually into `.xcframework` bundles.
- Created a custom `.podspec` to distribute it cleanly via CocoaPods.

This setup is inspired by:

- [Resolved FFmpegKit retirement issue in React Native – A Complete Guide](https://medium.com/@nooruddinlakhani/resolved-ffmpegkit-retirement-issue-in-react-native-a-complete-guide-0f54b113b390)
- [Resolved FFmpegKit retirement issue in iOS – A Complete Guide with CocoaPods Support](https://luthviar.medium.com/%EF%B8%8F-resolved-ffmpegkit-retirement-issue-in-ios-a-complete-guide-with-cocoapods-support-e3caac7192e0)

---

## Usage

### 1. Add the pod to your `Podfile`

```ruby
pod 'ffmpeg-kit-ios-full-gpl', :podspec => 'https://raw.githubusercontent.com/xpcapital/ffmpeg-kit-full-gpl/main/ffmpeg-kit-ios-full-gpl.podspec'
```

### 2. Install

```bash
pod install
```

---

## Project Structure

```
/
├── ffmpeg-kit-ios-full-gpl.podspec
└── xcframeworks/
    ├── ffmpeg.xcframework
    ├── libavcodec.xcframework
    ├── libavformat.xcframework
    └── libavutil.xcframework
    ...
```

- `ffmpeg-kit-ios-full-gpl.podspec`: Defines how CocoaPods will install the frameworks.
- `xcframeworks/`: Contains the precompiled FFmpeg modules.

---

## Notes

- Make sure you **commit the `.xcframeworks`** if you are hosting this podspec privately.
- Ensure your deployment targets match the minimum deployment targets of the compiled frameworks.

---

## License

This project bundles FFmpeg, which is licensed under **LGPL/GPL**.  
Please check [FFmpeg's official license information](https://ffmpeg.org/legal.html) to ensure compliance based on your usage.
