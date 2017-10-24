
#import "RNDeviceTimeFormat.h"

@implementation RNDeviceTimeFormat

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

BOOL is24Hour = false;

+ (void)initialize {
    NSString *formatStringForHours = [NSDateFormatter dateFormatFromTemplate:@"j" options:0 locale:[NSLocale currentLocale]];
    NSRange containsA = [formatStringForHours rangeOfString:@"a"];
    is24Hour = containsA.location == NSNotFound;
}

- (NSDictionary *)constantsToExport
{
  return @{ @"is24Hour": @(is24Hour) };
}

@end
