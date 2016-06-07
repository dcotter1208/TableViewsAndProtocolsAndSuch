//
//  Zoo.h
//  TableViewsAndProtocolsAndSuch
//
//  Created by DetroitLabs on 6/7/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Zoo : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *loction;
@property(nonatomic, strong) NSMutableArray *animals;

-(id)initWithName:(NSString *)name andLocation:(NSString *)location;

@end
