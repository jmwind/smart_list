//
//  AddToDoItemViewController.m
//  ToDoList
//
//  Created by Jean-Michel Lemieux on 2015-06-19.
//  Copyright (c) 2015 Jean-Michel Lemieux. All rights reserved.
//

#import "AddToDoItemViewController.h"

@interface AddToDoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@end

@implementation AddToDoItemViewController

- (void)viewDidLoad {
    [self.textField becomeFirstResponder];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if (sender != self.saveButton) return;
    if (self.textField.text.length > 0) {
        self.toDoItem = [[TodoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
}


@end
