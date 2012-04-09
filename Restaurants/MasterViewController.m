//
//  MasterViewController.m
//  Restaurants
//
//

#import "MasterViewController.h"

@implementation MasterViewController


- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    Restaurant* piopio = [[Restaurant alloc] init];
    
    piopio.name = @"Pio Pio";
    piopio.address = @"746 First Avenue\nNew York, NY 10128";
    piopio.cuisineType = @"Peruvian";
    piopio.yearOpened = 1995;
    
    Review* pioReview1 = [[Review alloc] init];
    pioReview1.text = @"What fab-u-lass chicken! We could eat it all day if we didn't have to stop to drink sangria!";
    pioReview1.reviewer = @"The Addams";
    pioReview1.score = 5;
    pioReview1.numberOfHelpfulRatings = 19;
    pioReview1.numberOfunhelpfulRatings = 8;
    //    
    Review* pioReview2 = [[Review alloc] init];
    pioReview2.text = @"I DONE POSTED ON DA INTARWEBS!";
    pioReview2.reviewer = @"Anonymous";
    pioReview2.score = 1;
    pioReview2.numberOfHelpfulRatings = 0;
    pioReview2.numberOfunhelpfulRatings = 45;
    //    
    Review* pioReview3 = [[Review alloc] init];
    pioReview3.text = @"Some of the best chicken I've ever eaten. A helpful tip: get some green (Aji) sauce to go, they sell it by the pint!";
    pioReview3.reviewer = @"Jim Carr";
    pioReview3.score = 5;
    pioReview3.numberOfHelpfulRatings = 28;
    pioReview3.numberOfunhelpfulRatings = 2;
    //    
    Review* pioReview4 = [[Review alloc] init];
    pioReview4.text = @"While the food is amazing, they often simply don't pick up the phone when ordering out!";
    pioReview4.reviewer = @"Paul";
    pioReview4.score = 4;
    pioReview4.numberOfHelpfulRatings = 14;
    pioReview4.numberOfunhelpfulRatings = 5;
    
    
    Review* pioReview5 = [[Review alloc] init];
    pioReview5.text = @"Nothing beats good southern breakfast of Fried Chicken 'n Waffles";
    pioReview5.reviewer = @"Michelle";
    pioReview5.score = 4;
    pioReview5.numberOfHelpfulRatings = 10;
    pioReview5.numberOfunhelpfulRatings = 2;

    
    //adding reviews to the review array located in restaurant.
    piopio.reviews = [[NSMutableArray alloc] initWithObjects:pioReview1, pioReview2, pioReview3, pioReview4, nil];   
    //restaurant.reviews =[addObject: review5];
    
    
    //creating a best review to hold the return of the method in restaurant 
    Review* bestReview = [piopio mostHelpfulReview];
    
//    reviewLabel.text = [review text];
//    addressLabel.text = [restaurant address];
//    navigationHeader.title = [restaurant name];
//    cuisineLabel.text = [restaurant cuisineType];
//    ageLabel.text = [NSString stringWithFormat:@"Est. %i (%i years ago)", restaurant.yearOpened, [restaurant age]];
//    
//    if (bestReview.numberOfHelpfulRatings<5) {
//        helpfulReviewLabel.text = [NSString stringWithFormat:@"There are not enough ratings yet"];
//    }
//    if (bestReview.numberOfHelpfulRatings>=5) {
//        helpfulReviewLabel.text = [NSString stringWithFormat:@" %@ --%@", bestReview.text, bestReview.reviewer];
//    }
//    
//    helpfulReviewPercentageLabel.text = [NSString stringWithFormat:@"**Most helpful review -- %i of %i found this review helpful", review1.numberOfHelpfulRatings, [review1 totalReview]];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


-(int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath
                                                                              *)indexPath
{
    NSString* cellIdentifier = @"RestaurantCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.textLabel.text = @"Pio Pio";
    cell.detailTextLabel.text = @"Peruvian";
    return cell;
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

@end
