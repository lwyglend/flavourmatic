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
    return 100.0;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSEnumerator *flavoursByGroupEnumerator = [self.flavourWheel.flavours objectEnumerator];
    NSMutableArray *allFlavours = [NSMutableArray arrayWithCapacity:[self.flavourWheel numberOfFlavours]];
    NSUInteger flavourCounter = 0;
    NSUInteger withinFlavourGroupCounter;
    
    for( NSArray *flavoursByGroup in flavoursByGroupEnumerator ) {
        for( withinFlavourGroupCounter = 0 ; withinFlavourGroupCounter < flavoursByGroup.count ; withinFlavourGroupCounter ++ ){
            allFlavours[flavourCounter] = flavoursByGroup[withinFlavourGroupCounter];
            flavourCounter ++;
        }
    }
    return allFlavours[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    //handle action on selection
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
