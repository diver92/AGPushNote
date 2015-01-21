//
//  AGViewController.m
//  AGPushNote_Example
//
//  Created by Aviel Gross on 4/29/14.
//  Copyright (c) 2014 Aviel Gross. All rights reserved.
//

#import "AGViewController.h"
#import "AGPushNoteView.h"

static NSInteger pushCounter = 0;

@interface AGViewController ()

@end

@implementation AGViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pushNowAction:(UIButton *)sender {
  NSString *msg = [NSString stringWithFormat:@"%d message", pushCounter++];
  AGPushNoteInfoObj *pushInfoObj = [AGPushNoteInfoObj infoObjectWithMessage:msg];
  [AGPushNoteView showWithNotificationObject:pushInfoObj];
  [AGPushNoteView setMessageAction:^(AGPushNoteInfoObj *object) {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"PUSH"
                                                    message:msg
                                                   delegate:nil
                                          cancelButtonTitle:@"Close"
                                          otherButtonTitles:nil];
    [alert show];
  }];
}

@end
