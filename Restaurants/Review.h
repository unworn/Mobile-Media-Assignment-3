//
//  Review.h
//  Restaurants
//
//  Created by Nidhi Malhotra on 2/27/12.
//  Copyright (c) 2012 Unworn Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Review : NSObject
{
    NSString* reviewText;
    NSString* reviewer;
    int helpfulCount;
}

@property(readwrite, strong) NSString* reviewText;
@property(readwrite, strong) NSString* reviewer;
@property(readwrite) bool helpful;

-(int)helpfulCount;

@end


