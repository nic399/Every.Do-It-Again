//
//  AddItemViewController.h
//  Every.Do It Again
//
//  Created by Nicholas Fung on 2017-10-25.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ToDo;

@protocol AddToDoDelegate <NSObject>

-(void)addNewToDo:(ToDo *)toDo;

@end

@interface AddItemViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic, readwrite) id<AddToDoDelegate> delegate;
@property (strong, nonatomic, readwrite) ToDo *setThisToDo;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


@end
