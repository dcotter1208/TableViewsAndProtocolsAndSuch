//
//  AnimalActions.h
//  TableViewsAndProtocolsAndSuch
//
//  Created by DetroitLabs on 6/7/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AnimalActions <NSObject>

-(NSString *)feedAnimal:(NSString *)food;
-(NSString *)playWithAnimal:(NSString *)animal;

@end
