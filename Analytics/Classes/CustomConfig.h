//
//  CustomConfig.h
//  Analytics
//
//  Created by Matteo Corradin on 04/07/2019.
//  Copyright © 2019 Segment. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CustomConfig : NSObject
@property (class, nonatomic, strong, readonly) CustomConfig *sharedInstance;

- (void) setSegmentApiBase:(NSString*) url;
- (void) setSegmentCDNBase:(NSString*) url;
- (void) setMobileServiceBase:(NSString*) url;

- (NSURL*) getSegmentApiBase;
- (NSURL*) getSegmentCDNBase;
- (NSURL*) getMobileServiceBase;

@end
