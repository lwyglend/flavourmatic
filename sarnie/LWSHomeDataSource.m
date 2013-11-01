//
//  LWSHomeDataSource.m
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import "LWSHomeDataSource.h"

@interface LWSHomeDataSource ()

@property LWSFlavourWheel *flavourWheel;

@end

@implementation LWSHomeDataSource

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1; //return 1 column, for the flavours (not groups yet)
    //next step... return two columns, one for flavour, one for flavour group
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.flavourWheel numberOfFlavours];
}

-(id)initWithFlavourWheel:(LWSFlavourWheel*)flavourWheel
{
    self = [super init];
    _flavourWheel = flavourWheel;
    return self;
}

+(instancetype)homeDataSourceWithFlavourWheel:(LWSFlavourWheel *)flavourWheel
{
    return [[LWSHomeDataSource alloc] initWithFlavourWheel:flavourWheel];
}

@end
