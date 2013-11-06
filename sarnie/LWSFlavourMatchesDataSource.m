//
//  LWSFlavourMatchesDataSource.m
//  sarnie
//
//  Created by Laura Wyglendacz on 06/11/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import "LWSFlavourMatchesDataSource.h"

@interface LWSFlavourMatchesDataSource ()

@property (nonatomic, strong) LWSFlavourWheel *flavourWheel;

@end

@implementation LWSFlavourMatchesDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

-(id)initWithFlavourWheel:(LWSFlavourWheel *)flavourWheel
{
    self = [super init];
    _flavourWheel = flavourWheel;
    return self;
}

+(instancetype)flavourMatchesDataSourceWithFlavourWheel:(LWSFlavourWheel *)flavourWheel
{
    return [[LWSFlavourMatchesDataSource alloc] initWithFlavourWheel:flavourWheel];
}

@end
