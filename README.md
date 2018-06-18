
# react-native-device-time-format

This package was inspired by [react-native-device-clock-format](https://github.com/brentvatne/react-native-device-clock-format), which is *"no longer actively maintained"*, and only supported iOS.

On mobile devices users have the option to opt in, or out, pf the predefined locale used for their language settings (12/24 hour clock):

![12/24 time format iOS settings](https://i.imgur.com/uLD3onD.jpg)

This package exposes this device setting for iOS & Android.

## Supported platforms

- [x] iOS
- [x] Android
- [ ] Windows

## Getting started

Install with your preferred package manager:
```
yarn add react-native-device-time-format
```
or
```
npm install react-native-device-time-format --save
```

And link the module by:
```
react-native link react-native-device-time-format
```

Should the automatic linking fail (in case of folder structure mismatch or various other reasons), please follow the [manual installation guide](docs/MANUAL_INSTALLATION.md).

## Usage

Bellow is an example of fetching the hours & minutes string representation from a date, with the device time format (using [moment](https://www.npmjs.com/package/moment) for date/time formatting):

```js
import DeviceTimeFormat from 'react-native-device-time-format'
import moment from 'moment'

/**
 * @function hourFormat
 * @param  {Date} date Date to format
 * @return {Promise<string>} formatted string HH:mm / h:mm A, depending on device setting
 */
const getCurrentHourFormat = async (date) => {
  const using24HourFormat = await DeviceTimeFormat.is24HourFormat()
  return moment(date).format(using24HourFormat ? 'HH:mm' : 'h:mm A'))
}
```

All native modules runs asynchronous, we suggest updating an internal state in your app when `AppState` changes to active.
