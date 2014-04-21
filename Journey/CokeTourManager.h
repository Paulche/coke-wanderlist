//
//  CokeTourManager.h
//  Journey
//
//  Created by Pavel Chechetin on 4/21/14.
//  Copyright (c) 2014 Pavel Chechetin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CokeTour.h"

@interface CokeTourManager : NSObject

@property NSMutableDictionary * tours;

- (CokeTour *) tourWithUuid: (NSString *)uuid;

+ (CokeTourManager *) sharedInstance;

@end
