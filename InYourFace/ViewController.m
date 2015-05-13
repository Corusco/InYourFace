//
//  ViewController.m
//  InYourFace
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self presentAlertViewController];
}

- (void)presentAlertViewController {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[self randomTitle] message:@"You only have 2 options:" preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Never again!" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        NSLog(@"I'll never show the alert again.");
    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Hit me baby" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self presentAlertViewController];
    }]];
    
    [self.navigationController presentViewController:alertController animated:YES completion:nil];
}

- (NSString *)randomTitle {

    int index = (arc4random_uniform((int)([self lines].count)));
    return [self lines][index];
    
}

- (NSArray *)lines {

    return @[@"Oh, I see what's goin on here. So sorry to interrupt. Proceed.",
             @"We don't need no stinking badges",
             @"You know, Scotland has its own martial arts. Yeah, it's called fuh-queue!",
             @"You can't fight in here. This is a war room.",
             @"There's no crying in baseball",
             @"The answer is 42",
             @"Yeah, Tommy. Before zee Germans get here."];
    
}


@end
