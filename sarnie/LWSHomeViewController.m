//
//  LWSHomeViewController.m
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import "LWSHomeView.h"
#import "LWSHomeViewController.h"

@interface LWSHomeViewController ()

@property(nonatomic,readonly) UIView *homeView;

@end

@implementation LWSHomeViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    _homeView = [LWSHomeView homeView];
    self.view = _homeView;
}

@end
