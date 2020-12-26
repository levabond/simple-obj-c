//
//  ViewController.m
//  simple-objc
//
//  Created by Лев Бондаренко on 11.12.2020.
//

#import "ViewController.h"
#import "../Services/NetworkService.h"

@interface ViewController ()

@end

@implementation ViewController
NetworkService *networkService = nil;
int i = 10;
NSString *str = @"test";
    
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    networkService = [NetworkService new];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    networkService = [NetworkService new];
    [networkService get:@"test"];
    
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
