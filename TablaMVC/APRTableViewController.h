//
//  APRTableViewController.h
//  TablaMVC
//
//  Created by Albert  on 06/06/13.
//  Copyright (c) 2013 Albert Pages. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APRAddViewController.h"

@interface APRTableViewController : UITableViewController <APRAddViewControllerDelegate>

@property (strong) NSMutableArray * modelo;
- (IBAction)addContacto:(id)sender;

@end
