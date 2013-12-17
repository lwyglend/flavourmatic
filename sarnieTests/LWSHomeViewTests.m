//
//  LWSHomeViewTests.m
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#define HC_SHORTHAND
#import <OCHamcrest.h>
#import "LWSViewTester.h"
#import "LWSHomeViewTests.h"
#import "LWSHomeView.h"

@interface LWSHomeViewTests ()

@property (nonatomic) LWSHomeView *homeView;

@end

@implementation LWSHomeViewTests

-(void)setUp
{
    _homeView = [LWSHomeView homeViewWithDataSource:[[LWSHomeViewDataSource alloc] init] andDelegate:[[LWSHomeViewDelegate alloc]init] ];
}

-(void)testFlavourPickerIsDisplayed
{
    //given
    NSString *expectedFlavourPickerAccessibilityText = @"Flavour Picker";
    NSArray *subviews = self.homeView.subviews;
    
    //when
    
    //then
    UIView *picker = [LWSViewTester findFirstUIViewIn:subviews withAccessibilityLabelText:expectedFlavourPickerAccessibilityText];
//    [LWSViewTester assertThatFrameOriginAndSizeIsNonZero:picker];
    assertThat([picker class], is([UIPickerView class]));
}

-(void)testFindFlavourMatchesButtonIsDisplayedWithCorrectText
{
    //given
    NSString *expectedFindFlavourMatchesButtonAccessibilityText = @"Find matching flavours!";
    NSArray *subviews = self.homeView.subviews;
    
    //when
    
    //then
    UIView *button = [LWSViewTester findFirstUIViewIn:subviews withAccessibilityLabelText:expectedFindFlavourMatchesButtonAccessibilityText];
    [LWSViewTester assertThatFrameOriginAndSizeIsNonZero:button];
}

@end

