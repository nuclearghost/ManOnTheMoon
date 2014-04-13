//
//  Page4ViewController.m
//  Man On The Moon
//
//  Created by Mark Meyer on 4/13/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import "Page4ViewController.h"

@interface Page4ViewController ()
@property (strong,nonatomic) NSMutableArray *items;

@property (nonatomic) UIDynamicAnimator* animator;
@property (nonatomic) UICollisionBehavior *collisionBehavior;
@property (nonatomic) UIPushBehavior* pushBehavior;
@property (nonatomic) UIAttachmentBehavior* attachmentBehavior;

@end

@implementation Page4ViewController

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
  
  // Create the animator
  UIDynamicAnimator *animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
  animator.delegate = self;
  
  self.items = [NSMutableArray array];
  [self.items addObject:self.geminiImg];
  [self.items addObject:self.agenaImg];

  self.collisionBehavior = [[UICollisionBehavior alloc]initWithItems:self.items];
  self.collisionBehavior.translatesReferenceBoundsIntoBoundary = NO;
  self.collisionBehavior.collisionDelegate = self;
  
  self.pushBehavior = [[UIPushBehavior alloc] initWithItems:nil mode:UIPushBehaviorModeInstantaneous];
  
  [animator addBehavior:self.collisionBehavior];
  [animator addBehavior:self.pushBehavior];
  
  
  self.animator = animator;
}

- (void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
  
  CGFloat magnitude = 3;
  [self.pushBehavior setMagnitude:magnitude];
  [self.pushBehavior addItem:self.geminiImg];

  [self.pushBehavior setActive:TRUE];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UICollissionBehaviorDelegate
- (void)collisionBehavior:(UICollisionBehavior *)behavior beganContactForItem:(id<UIDynamicItem>)item1
                 withItem:(id<UIDynamicItem>)item2 atPoint:(CGPoint)p
{
  NSLog(@"Collission detected");
  
  self.attachmentBehavior = [[UIAttachmentBehavior alloc] initWithItem:item1 attachedToItem:item2];
  self.attachmentBehavior.damping = 0.0f;
  [self.animator addBehavior:self.attachmentBehavior];
}

@end
