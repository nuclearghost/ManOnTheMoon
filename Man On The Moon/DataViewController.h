//
//  DataViewController.h
//  Man On The Moon
//
//  Created by Mark Meyer on 4/5/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import <UIKit/UIKit.h>
@import AVFoundation;

@interface DataViewController : UIViewController <AVSpeechSynthesizerDelegate>

@property (strong, nonatomic) NSString *utteranceString;
@property (weak, nonatomic) IBOutlet UILabel *utteranceLabel;
@property (nonatomic) NSUInteger pageIndex;

- (void)speakUtterance;
- (void)returnHome;


@property (weak, nonatomic) IBOutlet UILabel *textLabel;

- (IBAction)homeTapped:(id)sender;
- (IBAction)playTapped:(id)sender;
@end
