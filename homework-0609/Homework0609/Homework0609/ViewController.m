//
//  ViewController.m
//  Homework0609
//
//  Created by yishain on 6/9/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Label1.text = @"新用戶註冊";
    Label2.text =@"第三方登錄";
      Label3.text =@"首頁";
      self.Label4.text =@"頻道";
    self.Label5.text =@"我的千尋";
    self.Label6.text =@"廣場";
    self.Label7.text =@"更多";
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)clikced:(id)sender
{NSLog(@"press me");
    Label1.text = @"Hello";
    Label2.text = @"KISS";
}
-(IBAction)clikced2:(id)sender
{NSLog(@"壞死了");
    
    Label1.text = @"World";
    Label2.text = @"Hello";
    Label3.text = @"還來";
}
-(IBAction)clikced3:(id)sender
{NSLog(@"GET OUT!");
    self.Label4.text = @"HEY";
    self.Label5.text = @"YOU";
}
-(IBAction)clikced4:(id)sender
{NSLog(@"OUT!");
    self.Label6.text = @"LINK";
    self.Label7.text = @"YOU";
}
-(IBAction)clikced5:(id)sender
{NSLog(@"啾咪!");
    self.Label4.text = @"KISS";
    self.Label5.text = @"ME";
}
-(IBAction)clikced6:(id)sender
{NSLog(@"HIHI");
    Label1.text = @"World";
    Label2.text = @"Hello";
}
@end
