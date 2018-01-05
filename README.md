
# @rise-digital/react-native-device-time-format

## Getting started

`$ yarn add @rise-digital/react-native-device-time-format`
or
`$ npm install @rise-digital/react-native-device-time-format --save`

### Mostly automatic installation

`$ react-native link @rise-digital/react-native-device-time-format`


### Manual installation

#### iOS

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
