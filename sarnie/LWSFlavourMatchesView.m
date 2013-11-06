//
//  LWSFlavourMatchesView.m
//  sarnie
//
//  Created by Laura Wyglendacz on 06/11/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import "LWSFlavourMatchesView.h"

@interface LWSFlavourMatchesView ()

@property (nonatomic, strong) LWSFlavourMatchesDataSource* flavourMatchesViewDataSource;
@property (nonatomic, strong) LWSFlavourMatchesDelegate* flavourMatchesViewDelegate;

@end

@implementation LWSFlavourMatchesView

-(id)initWithDataSource:(LWSFlavourMatchesDataSource *)dataSource andDelegate:(LWSFlavourMatchesDelegate *)delegate
{
    self = [super init];
    _flavourMatchesViewDataSource = dataSource;
    _flavourMatchesViewDelegate = delegate;
    return self;
}

+(instancetype)flavourMatchesViewWithDataSource:(LWSFlavourMatchesDataSource *)dataSource andDelegate:(LWSFlavourMatchesDelegate *)delegate
{
    return [[LWSFlavourMatchesView alloc] initWithDataSource:dataSource andDelegate:delegate];
}

@end
