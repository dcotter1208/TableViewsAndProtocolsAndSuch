//
//  AnimalInteractionVC.m
//  TableViewsAndProtocolsAndSuch
//
//  Created by DetroitLabs on 6/7/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "AnimalInteractionVC.h"

@interface AnimalInteractionVC ()
@property (weak, nonatomic) IBOutlet UILabel *animalNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *animalImage;
@property (weak, nonatomic) IBOutlet UITextField *foodTF;

@end

@implementation AnimalInteractionVC

- (void)viewDidLoad {
    [super viewDidLoad];

    _animalNameLabel.text = _animal.name;
    _animalImage.image = _animal.image;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)displayAlert:(NSString *)alertMessage {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Whoops!" message:alertMessage preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alertController animated:TRUE completion:nil];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }];
    
    [alertController addAction:action];
    
}

- (IBAction)feedAnimalPressed:(id)sender {
    
    NSString *feedAnimalResponse = [_animal feedAnimal:_foodTF.text];
    [self displayAlert:feedAnimalResponse];
    
}

- (IBAction)playWithAnimalPressed:(id)sender {
    
    NSString *playWithAnimalResponse = [_animal playWithAnimal:_animal.name];
    [self displayAlert:playWithAnimalResponse];
}


@end
