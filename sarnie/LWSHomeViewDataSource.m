//
//  LWSHomeDataSource.m
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import "LWSHomeViewDataSource.h"

@interface LWSHomeViewDataSource ()

@property LWSFlavourWheel *flavourWheel;

@end

@implementation LWSHomeViewDataSource

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0) return [self.flavourWheel numberOfFlavours];
    return [self.flavourWheel numberOfFlavourGroups];
}

-(id)initWithFlavourWheel:(LWSFlavourWheel*)flavourWheel
{
    self = [super init];
    _flavourWheel = flavourWheel;
    return self;
}

+(instancetype)homeDataSourceWithFlavourWheel:(LWSFlavourWheel *)flavourWheel
{
    return [[LWSHomeViewDataSource alloc] initWithFlavourWheel:flavourWheel];
}

@end
