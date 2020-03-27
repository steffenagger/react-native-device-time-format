# Manual installation

## iOS

[React Native official guide](https://reactnative.dev/docs/linking-libraries-ios.html)

1. In Xcode, in the project navigator, right click `Libraries` → `Add Files to [your project's name]`
2. Go to `node_modules` → `react-native-device-time-format` and add `RNDeviceTimeFormat.xcodeproj`
3. In Xcode, in the project navigator, select your project. Add `libRNDeviceTimeFormat.a` to your project's `Build Phases` → `Link Binary With Libraries`
4. Run your project (`Cmd+R`)

## Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import io.sua.RNDeviceTimeFormatPackage;` to the imports at the top of the file
  - Add `new RNDeviceTimeFormatPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
    ```
    include ':react-native-device-time-format'
    project(':react-native-device-time-format').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-device-time-format/android')
    ```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
    ```
      implementation project(':react-native-device-time-format')
    ```
