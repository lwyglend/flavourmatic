//
//  LWSHomeViewController.m
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import "LWSHomeView.h"
#import "LWSHomeViewController.h"
#import "LWSFlavourMatchesViewController.h"

@interface LWSHomeViewController ()

@property(nonatomic,readonly) LWSHomeView *homeView;
@property (nonatomic, readonly) LWSHomeDelegate *homeDelegate;
@property (nonatomic, readonly) LWSHomeDataSource *homeDataSource;
@property (nonatomic, readonly) UIViewController *flavourMatchesViewController;

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
    [self.flavourMatchesViewController setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:self.flavourMatchesViewController animated:YES completion:nil];
}

-(id)initWithDataSource:(LWSHomeDataSource*)dataSource
            andDelegate:(LWSHomeDelegate*)delegate
andFlavourMatchesViewController:(UIViewController *)viewController
{
    self = [super init];
    _homeDataSource = dataSource;
    _homeDelegate = delegate;
    _flavourMatchesViewController = viewController;
    return self;
}

+(instancetype)homeViewControllerWith:(LWSHomeDataSource*) dataSource
                          andDelegate:(LWSHomeDelegate*)delegate
           andFlavourMatchesViewController:(UIViewController *)viewController

{
    return [[LWSHomeViewController alloc] initWithDataSource:dataSource
                                                 andDelegate:delegate
                             andFlavourMatchesViewController:viewController];
}

@end
