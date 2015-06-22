//
//  TodoItem.h
//  ToDoList
//
//  Created by Jean-Michel Lemieux on 2015-06-22.
//  Copyright (c) 2015 Jean-Michel Lemieux. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TodoItem : NSObject

    @property NSString *itemName;
    @property BOOL completed;
    @property (readonly) NSDate *creationDate;

@end
