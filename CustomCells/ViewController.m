//
//  ViewController.m
//  CustomCells
//
//  Created by supermacho on 03.10.17.
//  Copyright © 2017 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
BOOL blinkStatus;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   self.timer = [NSTimer scheduledTimerWithTimeInterval:0.7 target:self selector:@selector(blink) userInfo:nil repeats:YES];

}


- (void)blink {

    [self.tap setHidden:(!self.tap.hidden)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
