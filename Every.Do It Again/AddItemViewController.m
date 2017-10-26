//
//  AddItemViewController.m
//  Every.Do It Again
//
//  Created by Nicholas Fung on 2017-10-25.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "AddItemViewController.h"
#import "Every_Do_It_Again+CoreDataModel.h"



@interface AddItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionField;
@property (weak, nonatomic) IBOutlet UISlider *prioritySlider;
@property (weak, nonatomic) IBOutlet UIDatePicker *deadlinePicker;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;

@end

@implementation AddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(addNewToDo)];
    self.navigationItem.rightBarButtonItem = doneButton;
    self.priorityLabel.text = [NSString stringWithFormat:@"%d", (int)self.prioritySlider.value];
}

- (IBAction)prioritySliderChanged:(UISlider *)sender {
    self.priorityLabel.text = [NSString stringWithFormat:@"%d", (int)sender.value];
}

- (IBAction)endEditingPressed:(id)sender {
    [self dismissKeyboard];
}

-(void)addNewToDo{
    ToDo *todo = [[ToDo alloc] initWithContext:self.managedObjectContext];
    
    todo.title = self.titleField.text;
    todo.todoDescription = self.descriptionField.text;
    todo.priority = (int)self.prioritySlider.value;
    NSError *error = nil;
    if (![self.managedObjectContext save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
    //[self.delegate addNewToDo:todo];
    [self.navigationController popToRootViewControllerAnimated:true];
}

-(void)dismissKeyboard {
    [self.titleField resignFirstResponder];
    [self.descriptionField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
