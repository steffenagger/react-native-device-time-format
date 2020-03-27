
import { NativeModules } from 'react-native'
const { RNDeviceTimeFormat } = NativeModules

export const is24HourFormat = RNDeviceTimeFormat.is24HourFormat

export default { is24HourFormat }
