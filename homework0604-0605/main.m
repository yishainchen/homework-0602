//
//  main.m
//  HomeWork0604
//
//  Created by yishain on 6/4/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "HomeWork604.h"
#import "TEST04.h"


int main(int argc, char * argv[]) {
    
    HomeWork604Class *work0604 = [HomeWork604Class new];
    [work0604 methodA:20 andInteger:20];
    [work0604 methodB:5 andString:@"啾咪"];

    
    
    TEST04Class *test0604 = [TEST04Class new];
    [test0604 methodA:20 andinterger:20];
    [test0604 MEthodB:20 andstring:@"hello"];

    
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
