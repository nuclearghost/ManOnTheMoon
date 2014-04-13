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
  
    self.utteranceLabel = self.textLabel;
    self.utteranceString = self.textLabel.text;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)playTapped:(id)sender {
  NSLog(@"play tapped");
  [self speakUtterance];
}

- (IBAction)homeTapped:(id)sender {
    NSLog(@"home tapped");
  [self returnHome];
}
@end
