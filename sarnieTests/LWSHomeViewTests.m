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
    _homeView = [LWSHomeView homeView];
}

-(void)testThatHomeViewIsCreated
{
    assertThat(self.homeView, isNot(NULL));
}

-(void)testFindFlavourMatchesButtonIsDisplayedWithCorrectText
{
    //given
    NSString *expectedFindFlavourMatchesButtonText = @"Find matching flavours!";
    NSArray *subviews = self.homeView.subviews;
    
    //when
    
    //then
    UIView *button = [LWSViewTester findFirstUIViewIn:subviews withAccessibilityLabelText:expectedFindFlavourMatchesButtonText];
    [LWSViewTester assertThatFrameOriginAndSizeIsNonZero:button];
}

@end
