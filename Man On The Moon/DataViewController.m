//
//  DataViewController.m
//  Man On The Moon
//
//  Created by Mark Meyer on 4/5/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import "DataViewController.h"

@interface DataViewController ()

@property (nonatomic, strong) AVSpeechSynthesizer *speechSynthesizer;
@property (nonatomic, strong) AVSpeechUtterance *utterance;
@end

@implementation DataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
    self.speechSynthesizer.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
  
    self.utterance = [[AVSpeechUtterance alloc] initWithString:self.utteranceString];
    self.utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:self.utterance.speechString];

    self.utteranceLabel.font = [UIFont fontWithName:@"NasalizationRg-Regular" size:20];
  
    self.utterance.rate = AVSpeechUtteranceDefaultSpeechRate;
    self.utterance.preUtteranceDelay = 0.5f;
    self.utterance.postUtteranceDelay = 0.5f;
}

#pragma mark - Public methods
- (void)speakUtterance
{
  [self.speechSynthesizer speakUtterance:self.utterance];
}

- (void)returnHome
{
  
}

#pragma mark - AVSpeechSynthesizerDelegate

- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer
        willSpeakRangeOfSpeechString:(NSRange)characterRange
                utterance:(AVSpeechUtterance *)utterance
{
  NSMutableAttributedString *mutableAttributedString = [[NSMutableAttributedString alloc] initWithString:utterance.speechString];
  [mutableAttributedString addAttribute:NSForegroundColorAttributeName
                                  value:[UIColor redColor] range:characterRange];
  self.utteranceLabel.attributedText = mutableAttributedString;
}

- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer
  didStartSpeechUtterance:(AVSpeechUtterance *)utterance
{
  self.utteranceLabel.attributedText = [[NSAttributedString alloc] initWithString:self.utteranceString];
}

- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer
 didFinishSpeechUtterance:(AVSpeechUtterance *)utterance
{
  self.utteranceLabel.attributedText = [[NSAttributedString alloc] initWithString:self.utteranceString];
}

@end
