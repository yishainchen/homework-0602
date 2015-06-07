//
//  HomeWork604.m
//  HomeWork0604
//
//  Created by yishain on 6/4/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HomeWork604.h"

@implementation HomeWork604Class

- (void)methodA: (int)x andInteger:(int)y {
    x = arc4random() % 100 + 1;
    y = arc4random() % 100 + 1;
    NSLog(@"%d = %d * %d", (x * y), x, y);
}

- (void)methodB: (int)timeInput andString:(NSString *)stringInput {
    for (int i = 0; i < timeInput; i++) {
        NSLog(@"%@", stringInput);
    }
}
@end

