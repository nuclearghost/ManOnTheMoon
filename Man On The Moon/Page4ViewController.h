//
//  Page4ViewController.h
//  Man On The Moon
//
//  Created by Mark Meyer on 4/13/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import "DataViewController.h"

@interface Page4ViewController : DataViewController <UIGestureRecognizerDelegate,UICollisionBehaviorDelegate,UIDynamicAnimatorDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *geminiImg;
@property (weak, nonatomic) IBOutlet UIImageView *agenaImg;

@end
