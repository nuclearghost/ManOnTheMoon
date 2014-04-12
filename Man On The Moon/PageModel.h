//
//  PageModel.h
//  Man On The Moon
//
//  Created by Mark Meyer on 4/11/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PageModel : NSObject

@property (strong, nonatomic) NSString *Name;
@property (nonatomic) Boolean Nib;

-(id)initWith:(NSDictionary *)Dictionary;

@end
