//
//  Page6ViewController.m
//  Man On The Moon
//
//  Created by Mark Meyer on 4/13/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import "Page6ViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import <AudioToolbox/AudioToolbox.h>

@interface Page6ViewController ()
@property (strong, nonatomic) MPMoviePlayerController *moviePlayer;
@property (strong, nonatomic) AVAudioPlayer *audioPlayer;
@end

@implementation Page6ViewController

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

  NSString *videoFilePath = [[NSBundle mainBundle] pathForResource:@"One" ofType: @"mp4"];
  NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:videoFilePath ];
    self.moviePlayer = [[MPMoviePlayerController alloc]
                     initWithContentURL:fileURL];
  self.moviePlayer.scalingMode = MPMovieScalingModeAspectFill;
  //self.moviePlayer.controlStyle = MPMovieControlStyleFullscreen;
  
  //[self.moviePlayer prepareToPlay];
  
  [self.moviePlayer.view setFrame:CGRectInset(self.view.bounds, 40.0, 240.0)];
  [self.view addSubview:self.moviePlayer.view];
  
  //NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"OneStep" ofType: @"mp3"];
  //NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath ];
  //self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer
 didFinishSpeechUtterance:(AVSpeechUtterance *)utterance
{
  NSLog(@"page 6 finished speaking");
  [self.moviePlayer play];
  //[self.audioPlayer play];
}

@end
