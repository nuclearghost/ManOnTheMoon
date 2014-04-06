//
//  HomeViewController.m
//  Man On The Moon
//
//  Created by Mark Meyer on 4/5/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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
    self.titleLabel.font = [UIFont fontWithName:@"NasalizationRg-Regular" size:37];
    self.creditsButton.titleLabel.font = [UIFont fontWithName:@"NasalizationRg-Regular" size:17];
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

- (IBAction)creditsTapped:(id)sender {
    NSLog(@"creditsButtonTapped");
}
@end
