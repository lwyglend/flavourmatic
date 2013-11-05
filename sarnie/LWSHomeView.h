//
//  LWSHomeView.h
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LWSHomeDataSource.h"
#import "LWSHomeDelegate.h"

@interface LWSHomeView : UIView

@property (nonatomic,strong) UIButton *findFlavourMatchesButton;

+(instancetype)homeViewWithDataSource:(LWSHomeDataSource *)dataSource andDelegate:(LWSHomeDelegate *)delegate;

@end
