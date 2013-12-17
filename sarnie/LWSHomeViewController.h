//
//  LWSHomeViewController.h
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LWSHomeViewDelegate.h"
#import "LWSHomeViewDataSource.h"

@interface LWSHomeViewController : UIViewController

+(instancetype)homeViewControllerWith:(LWSHomeViewDataSource*)dataSource
                          andDelegate:(LWSHomeViewDelegate*)delegate
      andFlavourMatchesViewController:(UIViewController *)viewController;

@end
