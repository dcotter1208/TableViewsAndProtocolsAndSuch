//
//  Zoo.m
//  TableViewsAndProtocolsAndSuch
//
//  Created by DetroitLabs on 6/7/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Zoo.h"

@implementation Zoo

-(id)initWithName:(NSString *)name andLocation:(NSString *)location{
    self = [super init];
    if (self) {
        _name = name;
        _loction = location;
    }
    return self;
}


@end
