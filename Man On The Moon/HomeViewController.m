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
    self.titleButton.titleLabel.font = [UIFont fontWithName:@"NasalizationRg-Regular" size:47];
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
    UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"Are you an adult?" message:@"What year did Apollo 11 land on the moon?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Confirm", nil];
    av.alertViewStyle = UIAlertViewStylePlainTextInput;
    [av show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1)
    {
        NSString *textInput = [[alertView textFieldAtIndex:0] text];
        if ([textInput isEqual: @"1969"])
        {
            NSLog(@"Adult");
            //TODO go to credits screen
            [self performSegueWithIdentifier:@"creditsSegue" sender:self];
        }
        else
        {
            NSLog(@"Child or uneducated");
        }
            
    }
}

- (IBAction)titleTapped:(id)sender {
    NSLog(@"titleButtonTapped");
  [self performSegueWithIdentifier:@"storySegue" sender:self];

}
@end
