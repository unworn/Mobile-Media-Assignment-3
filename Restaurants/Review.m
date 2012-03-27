//
//  Review.m
//  Restaurants
//
//  Created by Nidhi Malhotra on 2/27/12.
//  Copyright (c) 2012 Unworn Studio. All rights reserved.
//

#import "Review.h"

@implementation Review
@synthesize text, reviewerName, score, numberOfHelpfulReviews, numberOfUnhelpfulReviews;


-(float) helpfulPercentage{
    return numberOfHelpfulReviews*100 - numberOfUnhelpfulReviews*100;
}
@end
