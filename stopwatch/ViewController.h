//
//  ViewController.h
//  stopwatch
//
//  Created by 松山　大樹 on 14/01/23.
//  Copyright (c) 2014年 Univercity of Kitakyushu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
IBOutlet UILabel *time;

NSTimer *timeTicker;
}

//@property(nonatomic, retain) UILabel time;

-(IBAction) start:(id)sender;
-(IBAction) stop:(id)sender;
-(IBAction) clear:(id)sender;

-(void)showActivity;


@end
