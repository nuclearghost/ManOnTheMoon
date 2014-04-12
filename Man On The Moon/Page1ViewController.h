//
//  Page1ViewController.h
//  Man On The Moon
//
//  Created by Mark Meyer on 4/11/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import "DataViewController.h"

@interface Page1ViewController : DataViewController

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

- (IBAction)playTapped:(id)sender;
- (IBAction)homeTapped:(id)sender;

@end
