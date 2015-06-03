//
//  main.m
//  LOOP
//
//  Created by yishain on 6/2/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {


    /*
    int a = arc4random() % 100;
    int b = arc4random() % a;
    int c = arc4random() % b;
    int d = arc4random() % c;

    NSLog(@"a = %i",a);
    NSLog(@"b = %i",b);
    NSLog(@"c = %i",c);
    NSLog(@"d = %i",d);
     */
    //100 > a > b > c > d > 0
    
    
    int a = 0;
    int b = 100;
    int c = 100;
    int d = 100;
    
    while (a == 0) {
        
        a = arc4random() % 100;
        
        if ( a >= 4 ) {
            NSLog(@"a == %i", a);
            break;
        }
        else{
            a = 0;
        }
    }
    
    while ( b == 100 ) {
        
        b = arc4random() % a;
        
        if ( b >= 3 ) {
            NSLog(@"b == %i", b);
            break;
        }
        else{
            b = 100;
        }
    }
    
    while ( c == 100 ) {
        
        c = arc4random() % b;
        
        if ( c >= 2 ) {
            NSLog(@"c == %i", c);
            break;
        }
        else {
            c = 100;
        }
    }
    
    while ( d == 100 ) {
        
        d = arc4random() % c;
        if ( d >= 1 ) {
            NSLog(@"d == %i", d);
            break;
        }
        else {
            d = 100;
        }
    }
    
    
    

   
    
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }}

