//
//  LWS.m
//  sarnie
//
//  Created by Laura Wyglendacz on 17/12/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#define HC_SHORTHAND
#import <OCHamcrest.h>
#import "LWSHomeViewDelegateTests.h"
#import "LWSHomeViewDelegate.h"
#import "OCMock/OCMock.h"

@interface LWSHomeViewDelegateTests()

@property LWSFlavourWheel *flavourWheel;
@property LWSHomeViewDelegate *delegate;

@end

@implementation LWSHomeViewDelegateTests

-(void)setUp
{
    _flavourWheel = [[LWSFlavourWheel alloc]init];
    _delegate = [LWSHomeViewDelegate homeViewDelegateWithFlavourWheel:_flavourWheel];

}

-(void)testSelectedFlavourIsInitiallySetToZeroElementInFlavourWheelAllFlavours
{
    //given
    
    //when
    self.delegate = [LWSHomeViewDelegate homeViewDelegateWithFlavourWheel:_flavourWheel];
    
    //then
    assertThat( [self.flavourWheel selectedFlavour], is([self.flavourWheel allFlavours][0]) );
}

-(void)testSelectedFlavourIsSetToFlavourInFocusInTheFlavourPickerWhenANewFlavourIsSelected
{
    //given
    NSInteger currentPickerRow = 12;
    NSInteger component = 1;
    id pickerView = [OCMockObject mockForClass:[UIPickerView class]];

    //when
    [self.delegate pickerView:pickerView didSelectRow:currentPickerRow inComponent:component];
    
    //then
    assertThat( [self.flavourWheel selectedFlavour], is([self.flavourWheel allFlavours][currentPickerRow]));
}

@end
