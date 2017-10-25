//
//  DetailViewController.h
//  Every.Do It Again
//
//  Created by Nicholas Fung on 2017-10-25.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Every_Do_It_Again+CoreDataModel.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Event *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

