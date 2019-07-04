//
//  CustomConfig.m
//  Analytics
//
//  Created by Matteo Corradin on 04/07/2019.
//  Copyright © 2019 Segment. All rights reserved.
//

#import "CustomConfig.h"

@implementation CustomConfig
+ (instancetype)sharedInstance {
    static id sharedInstance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

NSURL* segmentApiBase;
NSURL* segmentCDNBase;
NSURL* mobileServiceBase;

- (void) setSegmentApiBase:(NSString*) url{
    segmentApiBase = [NSURL URLWithString:url];
}

- (void) setSegmentCDNBase:(NSString*) url{
    segmentCDNBase = [NSURL URLWithString:url];
}

- (void) setMobileServiceBase:(NSString*) url{
    mobileServiceBase = [NSURL URLWithString:url];
}

- (NSURL*) getSegmentApiBase{
    return segmentApiBase;
}

- (NSURL*) getSegmentCDNBase{
    return segmentCDNBase;
}

- (NSURL*) getMobileServiceBase{
    return mobileServiceBase;
}

@end
