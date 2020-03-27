
# react-native-device-time-format

On mobile devices users have the option to opt in/out, of the systems locale, in regards to 12/24 hour clock format:

![12/24 time format iOS settings](https://i.imgur.com/uLD3onD.jpg)

This package exposes this device setting for iOS & Android.

## Contributions

This package was heavily inspired by [react-native-device-clock-format](https://github.com/brentvatne/react-native-device-clock-format), which is *"no longer actively maintained"*, and only supports iOS.

- React Native: 0.60+ autolinking support - fix by [Tim Kuilman](https://github.com/timkuilman)
- Android: SDK Build Tools version warning - fix by [Tihomir Valkanov](https://github.com/thinklinux)

Thank you 🙏

## Getting started

Install with your preferred package manager:
```
yarn add react-native-device-time-format
```
or
```
npm install react-native-device-time-format --save
```

For React Native < `0.60`, run:
```
react-native link react-native-device-time-format
```

Should the automatic linking fail (in case of folder structure mismatch or various other reasons), please follow the [manual installation guide](docs/MANUAL_INSTALLATION.md).

## Usage

Bellow is an example of fetching the hours & minutes string representation from a date, with the device time format (using [moment](https://www.npmjs.com/package/moment) for date/time formatting):

```js
import { is24HourFormat } from 'react-native-device-time-format'
import moment from 'moment'

/**
 * @function getCurrentHourFormat
 * @param  {Date} date Date to format
 * @return {Promise<string>} formatted string HH:mm / h:mm A, depending on device setting
 */
const getCurrentHourFormat = async (date) => {
  const is24Hour = await is24HourFormat()
  return moment(date).format(is24Hour ? 'HH:mm' : 'h:mm A'))
}
```

All native modules runs asynchronous, I would suggest updating an internal state in your app when `AppState` changes to active.
