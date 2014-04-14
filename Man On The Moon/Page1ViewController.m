//
//  Page1ViewController.m
//  Man On The Moon
//
//  Created by Mark Meyer on 4/11/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import "Page1ViewController.h"

@interface Page1ViewController ()

@end

@implementation Page1ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)jetsTapped:(id)sender {
  NSString *squishPath = [[NSBundle mainBundle]pathForResource:@"Jet" ofType:@"caf"];
  NSURL *squishURL = [NSURL fileURLWithPath:squishPath];
  SystemSoundID squishSoundID;
  AudioServicesCreateSystemSoundID((__bridge CFURLRef)squishURL, &squishSoundID);
  AudioServicesAddSystemSoundCompletion (squishSoundID, NULL, NULL,MyAudioServicesSystemSoundCompletionProc,(__bridge void *)(self));
  AudioServicesPlaySystemSound(squishSoundID);
}

void MyAudioServicesSystemSoundCompletionProc(SystemSoundID ssID,  void *clientData)
{
  NSLog(@"%s :: Release Sound", __PRETTY_FUNCTION__);
  AudioServicesDisposeSystemSoundID(ssID);
}
@end
