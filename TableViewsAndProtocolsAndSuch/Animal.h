//
//  Animal.h
//  TableViewsAndProtocolsAndSuch
//
//  Created by DetroitLabs on 6/7/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"
#import "AnimalActions.h"

@interface Animal : NSObject <AnimalActions>

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *type;
@property(nonatomic, strong) UIImage *image;

-(id)initWithName:(NSString *)name andType:(NSString *)type andImage:(NSString *)image;

@end
