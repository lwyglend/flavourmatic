//
//  LWSFlavourMatchesDelegate.m
//  sarnie
//
//  Created by Laura Wyglendacz on 06/11/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import "LWSFlavourMatchesDelegate.h"

@implementation LWSFlavourMatchesDelegate

+(instancetype)flavourMatchesDelegate
{
    return [[LWSFlavourMatchesDelegate alloc] init];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 30.0;
}

@end
