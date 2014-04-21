//
//  CokeTourManager.m
//  Journey
//
//  Created by Pavel Chechetin on 4/21/14.
//  Copyright (c) 2014 Pavel Chechetin. All rights reserved.
//

#import "CokeTourManager.h"
#import "CokeTour.h"


@implementation CokeTourManager

+ (CokeTourManager *) sharedInstance
{
    static  CokeTourManager * _sharedInstance = nil;
    
    static dispatch_once_t oncePredicate;
    
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[CokeTourManager alloc] init];
    });

    return _sharedInstance;
}

- (CokeTour *) tourWithUuid:(NSString *)uuid
{
    CokeTour * tour = [self.tours objectForKey: uuid];
    
    if (tour)
    {
        return tour;
    }
    else
    {
        tour = [[CokeTour alloc] initWithUuid: uuid];
       
        if (tour)
        {
            [self.tours setObject: tour forKey: uuid];
        }
        else
        {
            // TODO: error handling
            NSLog(@"Something is wrong with app. It's gonna crash now");
        }
        
        return tour;
    }
}
@end

