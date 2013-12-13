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
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *flavourCellIdentifier = @"flavourCell";
    NSString *currentSelectedFlavour = [self.flavourWheel selectedFlavour];
    UITableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:flavourCellIdentifier];
    if(tableViewCell == nil)
    {
        tableViewCell = [[UITableViewCell alloc ]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:flavourCellIdentifier];
    }
   [tableViewCell.textLabel setText: currentSelectedFlavour];
    return tableViewCell;
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
