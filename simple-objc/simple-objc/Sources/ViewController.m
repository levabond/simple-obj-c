//
//  ViewController.m
//  simple-objc
//
//  Created by Лев Бондаренко on 11.12.2020.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
    int i = 10;
    NSString *str = @"test";
    


- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *names = @[@"Lauta", @"Janet"];
    
    for (NSString *name in names) {
        NSLog(@"Hello, %@", name);
    }
    
    [self conditions];
}

- (void)conditions {
    if (i == 10) {
        NSLog(@"Hello, World!");
    }
    
    switch (i) {
        case 20:
            NSLog(@"It's 20!");
            break;
            
        default:
            break;
    }
}
@end
