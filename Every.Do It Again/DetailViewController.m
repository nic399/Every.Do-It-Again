//
//  DetailViewController.m
//  Every.Do It Again
//
//  Created by Nicholas Fung on 2017-10-25.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property (weak, nonatomic) IBOutlet UILabel *completionLabel;

@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = self.detailItem.todoDescription;
        self.titleLabel.text = self.detailItem.title;
        self.priorityLabel.text = [NSString stringWithFormat:@"%d", self.detailItem.priority];
        if (self.detailItem.isCompleted) {
            self.completionLabel.text = @"Done";
            self.completionLabel.textColor = [UIColor greenColor];
        }
        else {
            self.completionLabel.text = @"Todo";
            self.completionLabel.textColor = [UIColor redColor];
        }
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Managing the detail item

- (void)setDetailItem:(ToDo *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}


@end
