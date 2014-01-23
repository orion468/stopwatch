//
//  ViewController.m
//  stopwatch
//
//  Created by 松山　大樹 on 14/01/23.
//  Copyright (c) 2014年 Univercity of Kitakyushu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//@synthesize time;

-(IBAction) start:(id)sender{

    timeTicker = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(showActivity) userInfo:nil repeats:YES];
}

-(IBAction) stop:(id)sender{
    [timeTicker invalidate];
}

-(IBAction) clear:(id)sender{
    time.text = @"00.00";
}

-(void)showActivity{
    float currentTime = [time.text floatValue];
    float displayTime = currentTime +0.01;
    
    time.text = [NSString stringWithFormat:@"%.2f",displayTime];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
