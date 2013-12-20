//
//  LWSHomeDelegate.m
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import "LWSHomeViewDelegate.h"
#import "LWSFlavourWheel.h"

@interface LWSHomeViewDelegate ()

@property LWSFlavourWheel * flavourWheel;

@end

@implementation LWSHomeViewDelegate

-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 40.0;
}

-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    return 200.0;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSArray *allFlavours = [self.flavourWheel allFlavours];
    return allFlavours[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString* currentSelectedFlavour = [self.flavourWheel allFlavours][row];
    [self.flavourWheel setSelectedFlavour:currentSelectedFlavour];
}

-(void)setInitialSelectedFlavour
{
    NSInteger initialFlavourRow = 0;
    NSString *initialSelectedFlavour = [self.flavourWheel allFlavours][initialFlavourRow];
    [self.flavourWheel setSelectedFlavour:initialSelectedFlavour];
}

-(id)initWithFlavourWheel:(LWSFlavourWheel*)flavourWheel
{
    self = [super init];
    _flavourWheel = flavourWheel;
    [self setInitialSelectedFlavour];
    return self;
}

+(instancetype)homeViewDelegateWithFlavourWheel:(LWSFlavourWheel *)flavourWheel
{
    return [[LWSHomeViewDelegate alloc] initWithFlavourWheel:flavourWheel];
}

@ end
