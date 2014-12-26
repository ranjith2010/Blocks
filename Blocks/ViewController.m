//
//  ViewController.m
//  Blocks
//
//  Created by Ranjith on 24/12/14.
//  Copyright (c) 2014 Zippr. All rights reserved.
//

#import "ViewController.h"
#import "TypeDefs.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self pr_withReturnType];
    [self pr_withOutReturnType];
}


// Get back the Parameter using Block
- (void)pr_withReturnType{
    [self pr_callmeWithReturn :^(NSString *hi ,NSString *second){
        NSLog(@"%@",hi);
    }];
}
     
- (void)pr_callmeWithReturn :(void(^)(NSString *string , NSString *second))block{
    block(@"Welcome",nil);
}

// Just  call the Block, No need to return Anything!

- (void)pr_withOutReturnType{
    [self pr_callmeWithOutReturn :^(void){
    }];
}

- (void)pr_callmeWithOutReturn :(void(^)(void))block{
    NSLog(@"No ReturnType Method Invoked!");
}






@end
