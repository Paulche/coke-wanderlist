//
//  CokeTour.m
//  Journey
//
//  Created by Pavel Chechetin on 4/21/14.
//  Copyright (c) 2014 Pavel Chechetin. All rights reserved.
//

#import "CokeTour.h"

#define INFO_FORMAT @"Tours/%@"

@implementation CokeTour

- (CokeTour *) initWithUuid: (NSString *)uuid
{
    if(self = [super init])
    {
        self.uuid = uuid;
        
        NSBundle * bundle = [NSBundle mainBundle];
        
        NSString * tourDirectory = [[NSString alloc] initWithFormat: INFO_FORMAT, uuid];
        
        // Get array of points for given tour
        NSString * path = [bundle pathForResource: @"Info"
                                                   ofType: @"plist"
                                              inDirectory: tourDirectory];

        self.points = [self parsePlistWithPath: path];
        
        // Get text for given tour
        path = [bundle pathForResource: @"Text"
                                ofType: @"plist"
                           inDirectory: tourDirectory];
        
        self.textes = [self parsePlistWithPath:path];
    }
    
    return self;
}

- (id) parsePlistWithPath: (NSString *)path
{
    NSData  * plistXML = [[NSFileManager defaultManager] contentsAtPath:path];
    
    NSError * error   = nil;
    
    return [NSPropertyListSerialization propertyListWithData: plistXML
                                                     options: NSPropertyListImmutable
                                                      format: NULL
                                                       error: &error];
    // TODO: Error handling
}
@end
