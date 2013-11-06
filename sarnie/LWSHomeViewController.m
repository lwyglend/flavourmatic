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
    //Creat the view controller you want to present
    LWSFlavourMatchesViewController *flavourMatchesViewController = [LWSFlavourMatchesViewController flavourMatchesViewController];
    //Set the modalTransitionStyle property of the view controller to the desired value
    [flavourMatchesViewController setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    //Assign a delegate object to the view controller. Typically, the delegate is the presenting view contorller.
    
    //Call the presentViewController:animatedL:completion: method of the current view controller, passing in the view controller you want to present
    [self presentViewController:flavourMatchesViewController animated:YES completion:nil];    
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
