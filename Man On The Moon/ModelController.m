//
//  ModelController.m
//  Man On The Moon
//
//  Created by Mark Meyer on 4/5/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import "ModelController.h"

#import "DataViewController.h"

/*
 The controller serves as the data source for the page view controller; it therefore implements pageViewController:viewControllerBeforeViewController: and pageViewController:viewControllerAfterViewController:.
 It also implements a custom method, viewControllerAtIndex: which is useful in the implementation of the data source methods, and in the initial configuration of the application.
 
 There is no need to actually create view controllers for each page in advance -- indeed doing so incurs unnecessary overhead. Given the data model, these methods create, configure, and return a new view controller on demand.
 */

@interface ModelController()
@property (readonly, strong, nonatomic) NSMutableArray *pageData;
@property (strong, nonatomic) UIStoryboard *sboard;
@end

@implementation ModelController

- (id)init
{
    self = [super init];
    if (self) {
      NSString *path = [[NSBundle mainBundle] pathForResource:@"Pages" ofType:@"plist"];
      
      _pageData = [[NSMutableArray alloc] initWithContentsOfFile:path];
    }
    return self;
}

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard
{   
    // Return the data view controller for the given index.
    if (([self.pageData count] == 0) || (index >= [self.pageData count])) {
        return nil;
    }
  
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  [defaults setInteger:index forKey:@"page"];
  [defaults synchronize];
  
  if (self.sboard == nil && storyboard != nil) {
    self.sboard = storyboard;
  }
  
    PageModel *pm = [[PageModel alloc] initWith:self.pageData[index]];
  
    // Create a new view controller and pass suitable data.
  DataViewController *dataViewController;
  if (pm.Nib == NO) {
    dataViewController = [self.sboard instantiateViewControllerWithIdentifier:pm.Name];
  } else {
    dataViewController = [[DataViewController alloc] initWithNibName:pm.Name bundle:nil];
  }
    dataViewController.pageIndex = index;
    return dataViewController;
}

- (NSUInteger)indexOfViewController:(DataViewController *)viewController
{   
    // Return the index of the given data view controller.
    return viewController.pageIndex;
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(DataViewController *)viewController];
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index storyboard:viewController.storyboard];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(DataViewController *)viewController];
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index == [self.pageData count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index storyboard:viewController.storyboard];
}

@end
