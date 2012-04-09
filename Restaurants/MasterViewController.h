//
//  MasterViewController.h
//  Restaurants
//
//

#import <UIKit/UIKit.h>
#import "Restaurant.h"

@interface MasterViewController : UITableViewController
{
    NSMutableArray *reviews;
    NSMutableArray *restaurants;
}

@property (weak, nonatomic) IBOutlet NSMutableArray *restaurants;
@property (weak, nonatomic) IBOutlet NSMutableArray *reviews;
@end
