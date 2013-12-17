//
//  LWSFlavourMatchesViewTests.m
//  sarnie
//
//  Created by Laura Wyglendacz on 17/12/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#define HC_SHORTHAND
#import <OCHamcrest.h>
#import "LWSViewTester.h"
#import "LWSFlavourMatchesViewTests.h"
#import "LWSFlavourMatchesView.h"
#import "LWSFlavourMatchesDataSource.h"
#import "LWSFlavourMatchesDelegate.h"

@interface LWSFlavourMatchesViewTests ()

@property (nonatomic) LWSFlavourMatchesView  *matchesView;
@property (nonatomic) LWSFlavourWheel *flavourWheel;

@end

@implementation LWSFlavourMatchesViewTests

-(void)setUp
{
    _flavourWheel = [[LWSFlavourWheel alloc] init];

}

-(void)testCorrectMatchesAreDisplayedWhenFlavourCoffeeHasBeenSelected
{
    //given
    [self.flavourWheel setSelectedFlavour:@"Coffee"];
    NSArray *coffeeFlavourMatches = @[@"Chocolate"];
    
    //when
    _matchesView = [LWSFlavourMatchesView flavourMatchesViewWithDataSource:[LWSFlavourMatchesDataSource flavourMatchesDataSourceWithFlavourWheel:_flavourWheel] andDelegate:[LWSFlavourMatchesDelegate flavourMatchesDelegate] ];
    NSArray *subviews = self.matchesView.subviews;
    
    //then
    NSArray *resultViews = [LWSViewTester findTableViewCellsIn:subviews containingTextInArray:coffeeFlavourMatches];
    assertThat([NSNumber numberWithInt:resultViews.count], is(@1));
    
}

@end
