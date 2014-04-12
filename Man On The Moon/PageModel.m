//
//  PageModel.m
//  Man On The Moon
//
//  Created by Mark Meyer on 4/11/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import "PageModel.h"

@implementation PageModel

-(id)initWith:(NSDictionary *)Dictionary
{
  self = [super init];
  if (self) {
    self.Name = [Dictionary objectForKey:@"Name"];
    self.Nib = [[Dictionary objectForKey:@"Nib"] boolValue];
  }
  return self;
}

@end
