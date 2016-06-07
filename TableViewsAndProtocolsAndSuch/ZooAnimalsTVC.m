//
//  ZooAnimalsTVC.m
//  TableViewsAndProtocolsAndSuch
//
//  Created by DetroitLabs on 6/7/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ZooAnimalsTVC.h"
#import "AnimalInteractionVC.h"
#import "AddAnimalVC.h"
#import "Animal.h"
#import "Zoo.h"

@interface ZooAnimalsTVC ()

@end

@implementation ZooAnimalsTVC

Zoo *detroitZoo;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    detroitZoo = [[Zoo alloc]initWithName:@"Detroit Zoo" andLocation:@"Royal Oak, MI"];
    detroitZoo.animals = [NSMutableArray arrayWithArray:[self createAnimalsForZoo]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [detroitZoo.animals count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    Animal *animal = [detroitZoo.animals objectAtIndex:indexPath.row];
    
    cell.textLabel.text = animal.name;
    
    return cell;
}

-(NSMutableArray *)createAnimalsForZoo {
    Animal *alligator = [[Animal alloc]initWithName:@"Alligator" andType:@"reptile" andImage:@"alligator"];
    Animal *grizzlyBear = [[Animal alloc]initWithName:@"Grizzly Bear" andType:@"mammal" andImage:@"grizzlyBear"];
    Animal *tiger = [[Animal alloc]initWithName:@"Tiger" andType:@"mammal" andImage:@"tiger"];
    Animal *lion = [[Animal alloc]initWithName:@"Lion" andType:@"mammal" andImage:@"lion"];
    Animal *tortoise = [[Animal alloc]initWithName:@"Tortoise" andType:@"reptile" andImage:@"tortoise"];

    NSMutableArray *animals = [NSMutableArray arrayWithObjects:alligator, grizzlyBear, tiger, lion, tortoise, nil];
    
    return animals;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [detroitZoo.animals removeObjectAtIndex:indexPath.row];
        [self.tableView reloadData];
    }
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"animalInteractionSegue"]) {
        
        AnimalInteractionVC *destVC = [segue destinationViewController];
        
        NSIndexPath *indexPathForSelectedRow = [self.tableView indexPathForSelectedRow];
        
        destVC.animal = [detroitZoo.animals objectAtIndex:indexPathForSelectedRow.row];
        
    }

}

-(IBAction)unwindSegue:(UIStoryboardSegue *)unwindSegue{
    AddAnimalVC *srcController = [unwindSegue sourceViewController];
    [detroitZoo.animals addObject:srcController.animalToAdd];
    [self.tableView reloadData];
}

@end
