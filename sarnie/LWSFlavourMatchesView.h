//
//  LWSFlavourMatchesView.h
//  sarnie
//
//  Created by Laura Wyglendacz on 06/11/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LWSFlavourMatchesDataSource.h"
#import "LWSFlavourMatchesDelegate.h"

@interface LWSFlavourMatchesView : UITableView

+(instancetype)flavourMatchesViewWithDataSource:(LWSFlavourMatchesDataSource *)dataSource andDelegate:(LWSFlavourMatchesDelegate *)delegate;

@end
