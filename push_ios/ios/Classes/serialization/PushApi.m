// Autogenerated from Pigeon (v10.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "PushApi.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}
static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

@interface PURemoteMessage ()
+ (PURemoteMessage *)fromList:(NSArray *)list;
+ (nullable PURemoteMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PUNotification ()
+ (PUNotification *)fromList:(NSArray *)list;
+ (nullable PUNotification *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PUUNNotificationSettings ()
+ (PUUNNotificationSettings *)fromList:(NSArray *)list;
+ (nullable PUUNNotificationSettings *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@implementation PURemoteMessage
+ (instancetype)makeWithNotification:(nullable PUNotification *)notification
    data:(nullable NSDictionary<NSString *, id> *)data {
  PURemoteMessage* pigeonResult = [[PURemoteMessage alloc] init];
  pigeonResult.notification = notification;
  pigeonResult.data = data;
  return pigeonResult;
}
+ (PURemoteMessage *)fromList:(NSArray *)list {
  PURemoteMessage *pigeonResult = [[PURemoteMessage alloc] init];
  pigeonResult.notification = [PUNotification nullableFromList:(GetNullableObjectAtIndex(list, 0))];
  pigeonResult.data = GetNullableObjectAtIndex(list, 1);
  return pigeonResult;
}
+ (nullable PURemoteMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [PURemoteMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.notification ? [self.notification toList] : [NSNull null]),
    (self.data ?: [NSNull null]),
  ];
}
@end

@implementation PUNotification
+ (instancetype)makeWithTitle:(nullable NSString *)title
    body:(nullable NSString *)body {
  PUNotification* pigeonResult = [[PUNotification alloc] init];
  pigeonResult.title = title;
  pigeonResult.body = body;
  return pigeonResult;
}
+ (PUNotification *)fromList:(NSArray *)list {
  PUNotification *pigeonResult = [[PUNotification alloc] init];
  pigeonResult.title = GetNullableObjectAtIndex(list, 0);
  pigeonResult.body = GetNullableObjectAtIndex(list, 1);
  return pigeonResult;
}
+ (nullable PUNotification *)nullableFromList:(NSArray *)list {
  return (list) ? [PUNotification fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.title ?: [NSNull null]),
    (self.body ?: [NSNull null]),
  ];
}
@end

@implementation PUUNNotificationSettings
+ (instancetype)makeWithAuthorizationStatus:(PUUNAuthorizationStatus)authorizationStatus
    soundSetting:(PUUNNotificationSetting)soundSetting
    badgeSetting:(PUUNNotificationSetting)badgeSetting
    alertSetting:(PUUNNotificationSetting)alertSetting
    notificationCenterSetting:(PUUNNotificationSetting)notificationCenterSetting
    lockScreenSetting:(PUUNNotificationSetting)lockScreenSetting
    carPlaySetting:(PUUNNotificationSetting)carPlaySetting
    alertStyle:(PUUNAlertStyle)alertStyle
    showPreviewsSetting:(PUUNShowPreviewsSetting)showPreviewsSetting
    criticalAlertSetting:(PUUNNotificationSetting)criticalAlertSetting
    providesAppNotificationSettings:(nullable NSNumber *)providesAppNotificationSettings
    announcementSetting:(PUUNNotificationSetting)announcementSetting {
  PUUNNotificationSettings* pigeonResult = [[PUUNNotificationSettings alloc] init];
  pigeonResult.authorizationStatus = authorizationStatus;
  pigeonResult.soundSetting = soundSetting;
  pigeonResult.badgeSetting = badgeSetting;
  pigeonResult.alertSetting = alertSetting;
  pigeonResult.notificationCenterSetting = notificationCenterSetting;
  pigeonResult.lockScreenSetting = lockScreenSetting;
  pigeonResult.carPlaySetting = carPlaySetting;
  pigeonResult.alertStyle = alertStyle;
  pigeonResult.showPreviewsSetting = showPreviewsSetting;
  pigeonResult.criticalAlertSetting = criticalAlertSetting;
  pigeonResult.providesAppNotificationSettings = providesAppNotificationSettings;
  pigeonResult.announcementSetting = announcementSetting;
  return pigeonResult;
}
+ (PUUNNotificationSettings *)fromList:(NSArray *)list {
  PUUNNotificationSettings *pigeonResult = [[PUUNNotificationSettings alloc] init];
  pigeonResult.authorizationStatus = [GetNullableObjectAtIndex(list, 0) integerValue];
  pigeonResult.soundSetting = [GetNullableObjectAtIndex(list, 1) integerValue];
  pigeonResult.badgeSetting = [GetNullableObjectAtIndex(list, 2) integerValue];
  pigeonResult.alertSetting = [GetNullableObjectAtIndex(list, 3) integerValue];
  pigeonResult.notificationCenterSetting = [GetNullableObjectAtIndex(list, 4) integerValue];
  pigeonResult.lockScreenSetting = [GetNullableObjectAtIndex(list, 5) integerValue];
  pigeonResult.carPlaySetting = [GetNullableObjectAtIndex(list, 6) integerValue];
  pigeonResult.alertStyle = [GetNullableObjectAtIndex(list, 7) integerValue];
  pigeonResult.showPreviewsSetting = [GetNullableObjectAtIndex(list, 8) integerValue];
  pigeonResult.criticalAlertSetting = [GetNullableObjectAtIndex(list, 9) integerValue];
  pigeonResult.providesAppNotificationSettings = GetNullableObjectAtIndex(list, 10);
  pigeonResult.announcementSetting = [GetNullableObjectAtIndex(list, 11) integerValue];
  return pigeonResult;
}
+ (nullable PUUNNotificationSettings *)nullableFromList:(NSArray *)list {
  return (list) ? [PUUNNotificationSettings fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    @(self.authorizationStatus),
    @(self.soundSetting),
    @(self.badgeSetting),
    @(self.alertSetting),
    @(self.notificationCenterSetting),
    @(self.lockScreenSetting),
    @(self.carPlaySetting),
    @(self.alertStyle),
    @(self.showPreviewsSetting),
    @(self.criticalAlertSetting),
    (self.providesAppNotificationSettings ?: [NSNull null]),
    @(self.announcementSetting),
  ];
}
@end

@interface PUPushHostApiCodecReader : FlutterStandardReader
@end
@implementation PUPushHostApiCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [PUNotification fromList:[self readValue]];
    case 129: 
      return [PURemoteMessage fromList:[self readValue]];
    case 130: 
      return [PUUNNotificationSettings fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface PUPushHostApiCodecWriter : FlutterStandardWriter
@end
@implementation PUPushHostApiCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[PUNotification class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PURemoteMessage class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PUUNNotificationSettings class]]) {
    [self writeByte:130];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface PUPushHostApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation PUPushHostApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[PUPushHostApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[PUPushHostApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *PUPushHostApiGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    PUPushHostApiCodecReaderWriter *readerWriter = [[PUPushHostApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

void PUPushHostApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<PUPushHostApi> *api) {
  /// Returns null if it doesn't exist.
  /// See [PushFlutterApi.onNotificationTap] to understand why a RemoteMessage is not provided here.
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.PushHostApi.getNotificationTapWhichLaunchedTerminatedApp"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getNotificationTapWhichLaunchedTerminatedAppWithError:)], @"PUPushHostApi api (%@) doesn't respond to @selector(getNotificationTapWhichLaunchedTerminatedAppWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSDictionary<NSString *, id> *output = [api getNotificationTapWhichLaunchedTerminatedAppWithError:&error];
        callback(wrapResult(output, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.PushHostApi.getToken"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getTokenWithCompletion:)], @"PUPushHostApi api (%@) doesn't respond to @selector(getTokenWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api getTokenWithCompletion:^(NSString *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.PushHostApi.backgroundFlutterApplicationReady"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(backgroundFlutterApplicationReadyWithError:)], @"PUPushHostApi api (%@) doesn't respond to @selector(backgroundFlutterApplicationReadyWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api backgroundFlutterApplicationReadyWithError:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.PushHostApi.onListenToOnNewToken"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(onListenToOnNewTokenWithError:)], @"PUPushHostApi api (%@) doesn't respond to @selector(onListenToOnNewTokenWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api onListenToOnNewTokenWithError:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.PushHostApi.onCancelToOnNewToken"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(onCancelToOnNewTokenWithError:)], @"PUPushHostApi api (%@) doesn't respond to @selector(onCancelToOnNewTokenWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api onCancelToOnNewTokenWithError:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  /// Pass true for the option you want permission to use
  /// Returns true if permission was granted.
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.PushHostApi.requestPermission"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(requestPermissionBadge:sound:alert:carPlay:criticalAlert:provisional:providesAppNotificationSettings:announcement:completion:)], @"PUPushHostApi api (%@) doesn't respond to @selector(requestPermissionBadge:sound:alert:carPlay:criticalAlert:provisional:providesAppNotificationSettings:announcement:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_badge = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_sound = GetNullableObjectAtIndex(args, 1);
        NSNumber *arg_alert = GetNullableObjectAtIndex(args, 2);
        NSNumber *arg_carPlay = GetNullableObjectAtIndex(args, 3);
        NSNumber *arg_criticalAlert = GetNullableObjectAtIndex(args, 4);
        NSNumber *arg_provisional = GetNullableObjectAtIndex(args, 5);
        NSNumber *arg_providesAppNotificationSettings = GetNullableObjectAtIndex(args, 6);
        NSNumber *arg_announcement = GetNullableObjectAtIndex(args, 7);
        [api requestPermissionBadge:arg_badge sound:arg_sound alert:arg_alert carPlay:arg_carPlay criticalAlert:arg_criticalAlert provisional:arg_provisional providesAppNotificationSettings:arg_providesAppNotificationSettings announcement:arg_announcement completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.PushHostApi.getNotificationSettings"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getNotificationSettingsWithCompletion:)], @"PUPushHostApi api (%@) doesn't respond to @selector(getNotificationSettingsWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api getNotificationSettingsWithCompletion:^(PUUNNotificationSettings *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.PushHostApi.areNotificationsEnabled"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(areNotificationsEnabledWithCompletion:)], @"PUPushHostApi api (%@) doesn't respond to @selector(areNotificationsEnabledWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api areNotificationsEnabledWithCompletion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}
@interface PUPushFlutterApiCodecReader : FlutterStandardReader
@end
@implementation PUPushFlutterApiCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [PUNotification fromList:[self readValue]];
    case 129: 
      return [PURemoteMessage fromList:[self readValue]];
    case 130: 
      return [PUUNNotificationSettings fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface PUPushFlutterApiCodecWriter : FlutterStandardWriter
@end
@implementation PUPushFlutterApiCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[PUNotification class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PURemoteMessage class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PUUNNotificationSettings class]]) {
    [self writeByte:130];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface PUPushFlutterApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation PUPushFlutterApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[PUPushFlutterApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[PUPushFlutterApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *PUPushFlutterApiGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    PUPushFlutterApiCodecReaderWriter *readerWriter = [[PUPushFlutterApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

@interface PUPushFlutterApi ()
@property(nonatomic, strong) NSObject<FlutterBinaryMessenger> *binaryMessenger;
@end

@implementation PUPushFlutterApi

- (instancetype)initWithBinaryMessenger:(NSObject<FlutterBinaryMessenger> *)binaryMessenger {
  self = [super init];
  if (self) {
    _binaryMessenger = binaryMessenger;
  }
  return self;
}
- (void)onMessageMessage:(PURemoteMessage *)arg_message completion:(void (^)(FlutterError *_Nullable))completion {
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:@"dev.flutter.pigeon.PushFlutterApi.onMessage"
      binaryMessenger:self.binaryMessenger
      codec:PUPushFlutterApiGetCodec()];
  [channel sendMessage:@[arg_message ?: [NSNull null]] reply:^(id reply) {
    completion(nil);
  }];
}
- (void)onBackgroundMessageMessage:(PURemoteMessage *)arg_message completion:(void (^)(FlutterError *_Nullable))completion {
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:@"dev.flutter.pigeon.PushFlutterApi.onBackgroundMessage"
      binaryMessenger:self.binaryMessenger
      codec:PUPushFlutterApiGetCodec()];
  [channel sendMessage:@[arg_message ?: [NSNull null]] reply:^(id reply) {
    completion(nil);
  }];
}
- (void)onNotificationTapData:(NSDictionary<NSString *, id> *)arg_data completion:(void (^)(FlutterError *_Nullable))completion {
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:@"dev.flutter.pigeon.PushFlutterApi.onNotificationTap"
      binaryMessenger:self.binaryMessenger
      codec:PUPushFlutterApiGetCodec()];
  [channel sendMessage:@[arg_data ?: [NSNull null]] reply:^(id reply) {
    completion(nil);
  }];
}
- (void)onNewTokenToken:(NSString *)arg_token completion:(void (^)(FlutterError *_Nullable))completion {
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:@"dev.flutter.pigeon.PushFlutterApi.onNewToken"
      binaryMessenger:self.binaryMessenger
      codec:PUPushFlutterApiGetCodec()];
  [channel sendMessage:@[arg_token ?: [NSNull null]] reply:^(id reply) {
    completion(nil);
  }];
}
- (void)onOpenNotificationSettingsWithCompletion:(void (^)(FlutterError *_Nullable))completion {
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:@"dev.flutter.pigeon.PushFlutterApi.onOpenNotificationSettings"
      binaryMessenger:self.binaryMessenger
      codec:PUPushFlutterApiGetCodec()];
  [channel sendMessage:nil reply:^(id reply) {
    completion(nil);
  }];
}
@end

