//
//  LWSFlavourMatchesViewController.h
//  sarnie
//
//  Created by Laura Wyglendacz on 05/11/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LWSFlavourMatchesDataSource.h"
#import "LWSFlavourMatchesDelegate.h"

@interface LWSFlavourMatchesViewController : UITableViewController

+(instancetype)flavourMatchesViewControllerWithDataSource:(LWSFlavourMatchesDataSource *)dataSource andDelegate:(LWSFlavourMatchesDelegate *)delegate;

@end
