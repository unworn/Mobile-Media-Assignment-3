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
    NSString* reviewerName;
    NSString* text;
    int score;
    int numberOfHelpfulReviews;
    int numberOfUnhelpfulReviews;
    float helpfulPercentage;
}

@property(readwrite, strong) NSString* text;
@property(readwrite, strong) NSString* reviewerName;
@property(readwrite) int score;
@property(readwrite) int numberOfHelpfulReviews;
@property(readwrite) int numberOfUnhelpfulReviews;
-(float) helpfulPercentage;


@end


