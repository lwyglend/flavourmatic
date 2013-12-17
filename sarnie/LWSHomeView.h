//
//  LWSHomeView.h
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LWSHomeViewDataSource.h"
#import "LWSHomeViewDelegate.h"

@interface LWSHomeView : UIView

@property (nonatomic,strong) UIButton *findFlavourMatchesButton;

+(instancetype)homeViewWithDataSource:(LWSHomeViewDataSource *)dataSource andDelegate:(LWSHomeViewDelegate *)delegate;

@end
