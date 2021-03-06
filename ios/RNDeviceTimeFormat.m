#import "RNDeviceTimeFormat.h"

@implementation RNDeviceTimeFormat

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

RCT_REMAP_METHOD(is24HourFormat,
                 resolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
    @try {
        NSString *formatStringForHours = [NSDateFormatter dateFormatFromTemplate:@"j" options:0 locale:[NSLocale currentLocale]];
        NSRange containsA = [formatStringForHours rangeOfString:@"a"];
        BOOL is24HourFormat = (containsA.location == NSNotFound);
        
        resolve(@(is24HourFormat));
    }
    @catch (NSException *exception) {
        NSString *reason = exception.reason;
        reject(@"exception", nil, RCTErrorWithMessage(reason));
    }
}

@end
