//
//  LWSHomeDelegate.m
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import "LWSHomeDelegate.h"
#import "LWSFlavourWheel.h"

@interface LWSHomeDelegate ()

@property LWSFlavourWheel * flavourWheel;

@end

@implementation LWSHomeDelegate

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
    NSMutableArray *allFlavours = [self.flavourWheel allFlavours];
    return allFlavours[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    //handle action on selection
    //because all of the objects have the same flavourwheel... i can update the selected row/flavour in the flavourwheel as the button is selected each time, and share this information across the whole app...?
    NSString* currentSelectedFlavour = [self.flavourWheel allFlavours][row];
    [self.flavourWheel setSelectedFlavour:currentSelectedFlavour];
}

-(id)initWithFlavourWheel:(LWSFlavourWheel*)flavourWheel
{
    self = [super init];
    _flavourWheel = flavourWheel;
    return self;
}

+(instancetype)homeDelegateWithFlavourWheel:(LWSFlavourWheel *)flavourWheel
{
    return [[LWSHomeDelegate alloc] initWithFlavourWheel:flavourWheel];
}

@ end
