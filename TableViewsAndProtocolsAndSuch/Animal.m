//
//  Animal.m
//  TableViewsAndProtocolsAndSuch
//
//  Created by DetroitLabs on 6/7/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Animal.h"

@implementation Animal

-(id)initWithName:(NSString *)name andType:(NSString *)type andImage:(NSString *)image {
    self = [super init];
    if (self) {
        _name = name;
        _type = type;
        _image = [UIImage imageNamed:image];
    }
    return self;
}

-(NSString *)feedAnimal:(NSString *)food {
    
    NSString *response = [NSString stringWithFormat:@"Yum Yum! Thanks for the %@.", food];
    
    return response;
}

-(NSString *)playWithAnimal:(NSString *)animal {
    
    NSString *response = [NSString stringWithFormat:@"You decided to play with a %@. Now you're dead. Great life choices.", animal];

    return response;
}

@end
