//
//  HomeViewController.h
//  Man On The Moon
//
//  Created by Mark Meyer on 4/5/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *creditsButton;

- (IBAction)creditsTapped:(id)sender;

@end
