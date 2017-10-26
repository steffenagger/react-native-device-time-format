
# react-native-device-time-format

## Getting started

`$ npm install react-native-device-time-format --save`

### Mostly automatic installation

`$ react-native link react-native-device-time-format`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-device-time-format` and add `RNDeviceTimeFormat.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNDeviceTimeFormat.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import dk.risedigital.RNDeviceTimeFormatPackage;` to the imports at the top of the file
  - Add `new RNDeviceTimeFormatPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-device-time-format'
  	project(':react-native-device-time-format').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-device-time-format/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-device-time-format')
  	```


## Usage
```javascript
import DeviceTimeFormat from 'react-native-device-time-format'
import moment from 'moment'

// format date object to either "HH:mm" or "h AM|PM"
// result for "2017-10-23T23:00:00" either "23:00" or "11 PM"
// depending on the devices time settings.
const hourFormat = (date) =>
	DeviceTimeFormat.is24HourFormat()
		.then((use24HourFormat) =>
			moment(date).format(use24HourFormat ? 'HH:mm' : 'h A'))

// Or you could save it your app state... *hint hint*
```
