//
//  LWSFlavourMatchesViewController.m
//  sarnie
//
//  Created by Laura Wyglendacz on 05/11/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import "LWSFlavourMatchesViewController.h"
#import "LWSFlavourMatchesView.h"

@interface LWSFlavourMatchesViewController ()

@property (nonatomic, strong) LWSFlavourMatchesView *flavourMatchesView;
@property (nonatomic, strong) LWSFlavourMatchesDataSource *flavourMatchesDataSource;
@property (nonatomic, strong) LWSFlavourMatchesDelegate *flavourMatchesDelegate;

@end

@implementation LWSFlavourMatchesViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    _flavourMatchesView = [LWSFlavourMatchesView flavourMatchesViewWithDataSource:self.flavourMatchesDataSource andDelegate:self.flavourMatchesDelegate];
    self.tableView = _flavourMatchesView;
}

-(id)initWithDataSource:(LWSFlavourMatchesDataSource *)dataSource andDelegate:(LWSFlavourMatchesDelegate *)delegate
{
    self = [super init];
    _flavourMatchesDataSource = dataSource;
    _flavourMatchesDelegate = delegate;
    return self; 
}


+(instancetype)flavourMatchesViewControllerWithDataSource:(LWSFlavourMatchesDataSource *)dataSource andDelegate:(LWSFlavourMatchesDelegate *)delegate
{
    return [[LWSFlavourMatchesViewController alloc] initWithDataSource:dataSource andDelegate:delegate];
}


@end
