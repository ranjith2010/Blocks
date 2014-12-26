//
//  main.m
//  Blocks
//
//  Created by Ranjith on 24/12/14.
//  Copyright (c) 2014 Zippr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "TypeDefs.h"

@interface SampleClass : NSObject


- (void)printString :(void(^)(NSString *title))block;

- (void)printStringWithParamBlock :(CompletionBlock)block;

- (void)printWithBlockAndOtherParam:(GenericSetOfBlock)block;

- (void)performActionWithCompletion:(CompletionBlock)completionBlock;


@end
@implementation SampleClass

- (void)printString:(void (^)(NSString *))block{
    block(@"Steve Jobs");
}

- (void)printStringWithParamBlock:(CompletionBlock)block{
}

- (void)printWithBlockAndOtherParam:(GenericSetOfBlock)block{
    block(@[@"first",@"Second",@"Third"]);
}
- (void)performActionWithCompletion:(CompletionBlock)completionBlock{
    NSLog(@"Action Completed");
    completionBlock(@"Welcome");
}
@end


int main(int argc, char * argv[]) {
    @autoreleasepool {
        SampleClass *scObject = [[SampleClass alloc]init];
        [scObject printString:^(NSString *title){
            NSLog(@"title Of your String: %@",title);
        }];
        
        [scObject printStringWithParamBlock:^(NSString *name){}];
        
        [scObject printWithBlockAndOtherParam:^(NSArray *arrayOfStrings){
            NSLog(@"ArrayOfstrings: %@",arrayOfStrings);}];
        
        [scObject performActionWithCompletion:^(NSString* title){
            NSLog(@"Completion called : %@",title);
        }];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

