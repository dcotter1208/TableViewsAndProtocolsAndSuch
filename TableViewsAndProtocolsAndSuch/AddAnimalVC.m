//
//  AddAnimalVC.m
//  TableViewsAndProtocolsAndSuch
//
//  Created by DetroitLabs on 6/7/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "AddAnimalVC.h"

@interface AddAnimalVC ()
@property (weak, nonatomic) IBOutlet UITextField *animalNameTF;
@property (weak, nonatomic) IBOutlet UITextField *animalTypeTF;


@end

@implementation AddAnimalVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addAnimalToZoo:(id)sender {
    
    _animalToAdd = [[Animal alloc]initWithName:_animalNameTF.text andType:_animalTypeTF.text andImage:@"default"];
    
}


@end
