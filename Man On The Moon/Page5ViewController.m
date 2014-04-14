//
//  Page5ViewController.m
//  Man On The Moon
//
//  Created by Mark Meyer on 4/13/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import "Page5ViewController.h"

@interface Page5ViewController ()

@end

@implementation Page5ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer
 didFinishSpeechUtterance:(AVSpeechUtterance *)utterance
{
  NSLog(@"page 5 finished speaking");
  [UIView animateWithDuration:1.0 animations:^(void){
    self.saturn5.center = CGPointMake(self.saturn5.center.x, -200);
  }completion:^(BOOL finished){
    self.saturn5Pad.image = [UIImage imageNamed:@"Saturn5Smoke"];
  }];
}


@end
