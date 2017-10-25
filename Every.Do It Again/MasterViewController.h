//
//  MasterViewController.h
//  Every.Do It Again
//
//  Created by Nicholas Fung on 2017-10-25.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Every_Do_It_Again+CoreDataModel.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) DetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController<ToDo *> *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


@end

