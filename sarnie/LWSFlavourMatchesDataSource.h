//
//  LWSFlavourMatchesDataSource.h
//  sarnie
//
//  Created by Laura Wyglendacz on 06/11/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import "LWSFlavourWheel.h"

@interface LWSFlavourMatchesDataSource : NSObject <UITableViewDataSource>

+(instancetype)flavourMatchesDataSourceWithFlavourWheel:(LWSFlavourWheel *)flavourWheel;

@end
