//
//  CreditsViewController.m
//  Man On The Moon
//
//  Created by Mark Meyer on 4/13/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import "CreditsViewController.h"

@interface CreditsViewController ()

@end

@implementation CreditsViewController

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

- (void)viewWillAppear:(BOOL)animated {
  [self.navigationController setNavigationBarHidden:NO animated:animated];
  [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
  [self.navigationController setNavigationBarHidden:YES animated:animated];
  [super viewWillDisappear:animated];
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

@end
