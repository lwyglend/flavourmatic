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

@property(nonatomic,readonly) LWSHomeView *homeView;
@property (nonatomic, readonly) LWSHomeDelegate* homeDelegate;
@property (nonatomic, readonly) LWSHomeDataSource* homeDataSource;

@end

@implementation LWSHomeViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    _homeView = [LWSHomeView homeViewWithDataSource:self.homeDataSource andDelegate:self.homeDelegate];
    [self setupFindFlavourMatchesButtonAction];
    self.view = _homeView;
}

-(void)setupFindFlavourMatchesButtonAction
{
    [self.homeView.findFlavourMatchesButton addTarget:self
                                               action:@selector(findFlavourMatchesAction)
                                     forControlEvents:UIControlEventTouchUpInside];
}

-(void)findFlavourMatchesAction
{
    NSLog(@"BOOBS!");
}

-(id)initWithDataSource:(LWSHomeDataSource*)dataSource andDelegate:(LWSHomeDelegate*)delegate
{
    self = [super init];
    _homeDataSource = dataSource;
    _homeDelegate = delegate;
    return self;
}

+(instancetype)homeViewControllerWith:(LWSHomeDataSource*) dataSource andDelegate:(LWSHomeDelegate*)delegate

{
    return [[LWSHomeViewController alloc] initWithDataSource:dataSource andDelegate:delegate];
}

@end
