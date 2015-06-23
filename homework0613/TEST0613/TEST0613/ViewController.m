//
//  ViewController.m
//  TEST0613
//
//  Created by yishain on 6/15/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "ViewController.h"
#import "AbcTest.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
}

-(IBAction)SHOWABCTEST {
    self.abcd =[[[NSBundle mainBundle] loadNibNamed:@"ViewAbc" owner:self options:nil] objectAtIndex:0];
    
    self.abcd.frame =CGRectMake(80.0f, 356.0f, 160.0f, 100.0f);
    [self.view addSubview:self.abcd];
}

-(IBAction)DeleteView {
    
    [self.abcd removeFromSuperview];

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
