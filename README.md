
# @rise-digital/react-native-device-time-format

This package was inspired by [react-native-device-clock-format](https://github.com/brentvatne/react-native-device-clock-format), which is *"no longer actively maintained"*, and only supported iOS.

On mobile devices you have the option to opt in or out of you current locale's time-format (12/24 hour clock).
This package exposes this device setting for iOS & Android, and React Native only has general locales exposed, as this is what JavaScript/browsers supports.

## Supported platforms

- [x] iOS
- [x] Android

## Getting started

Install with your preferred package manager:
`yarn add @rise-digital/react-native-device-time-format`
or
`npm install @rise-digital/react-native-device-time-format --save`

### Automatic installation

In most cases, this module can be linked automatically by:
`react-native link @rise-digital/react-native-device-time-format`

Should this fail, in case of folder structure mismatch or various other versions, please follow the manual installation guide bellow.

### Manual installation

*Skip this, if automatic installation yielded no issues.*

#### iOS

[React Native official guide](https://facebook.github.io/react-native/docs/linking-libraries-ios.html)

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `@rise-digital/react-native-device-time-format` and add `RNDeviceTimeFormat.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNDeviceTimeFormat.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import dk.risedigital.RNDeviceTimeFormatPackage;` to the imports at the top of the file
  - Add `new RNDeviceTimeFormatPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':@rise-digital/react-native-device-time-format'
  	project(':@rise-digital/react-native-device-time-format').projectDir = new File(rootProject.projectDir, 	'../node_modules/@rise-digital/react-native-device-time-format/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':@rise-digital/react-native-device-time-format')
  	```

## Usage

Bellow is an example of fetching the hours & minutes string representation from a date, with the device time format:

```js
import DeviceTimeFormat from '@rise-digital/react-native-device-time-format'
import moment from 'moment'

/**
 * @function hourFormat
 * @param  {Date} date Date to format
 * @return {Promise<string>} formatted string HH:mm / h:mm A, depending on device setting
 */
const hourFormat = (date) =>
	DeviceTimeFormat.is24HourFormat()
		.then((use24HourFormat) =>
			moment(date).format(use24HourFormat ? 'HH:mm' : 'h:mm A'))
```

All native modules runs asynchronous, we suggest updating an internal state in your app when `AppState` changes to active.
