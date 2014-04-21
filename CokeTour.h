//
//  CokeTour.h
//  Journey
//
//  Created by Pavel Chechetin on 4/21/14.
//  Copyright (c) 2014 Pavel Chechetin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CokeTour : NSObject

@property NSArray * points;
@property NSArray * textes;
@property NSString * uuid;

- (CokeTour *) initWithUuid: (NSString *)uuid;
@end
