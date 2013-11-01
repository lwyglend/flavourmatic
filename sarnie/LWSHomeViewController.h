//
//  LWSHomeViewController.h
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LWSHomeDelegate.h"
#import "LWSHomeDataSource.h"

@interface LWSHomeViewController : UIViewController

+(instancetype)homeViewControllerWith:(LWSHomeDataSource*) dataSource andDelegate:(LWSHomeDelegate*)delegate;

@end
