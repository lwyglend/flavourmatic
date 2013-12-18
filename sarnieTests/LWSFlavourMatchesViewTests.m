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
    _matchesView = [LWSFlavourMatchesView flavourMatchesViewWithDataSource:[LWSFlavourMatchesDataSource flavourMatchesDataSourceWithFlavourWheel:self.flavourWheel] andDelegate:[LWSFlavourMatchesDelegate flavourMatchesDelegate] ];
}

//-(void)testAllCorrectMatchesAreDisplayedWhenFlavourCoffeeHasBeenSelected
//{
//    //given
//    [self.flavourWheel setSelectedFlavour:@"Coffee"];
//    NSArray *coffeeFlavourMatches = @[@"Chocolate"];
//    
//    //when
//    
//    //then
//    for(NSString* flavour in coffeeFlavourMatches)
//    {
//        UIView *tableViewCell = [LWSViewTester findFirstUIViewIn:self.matchesView.visibleCells
//                                                   withLabelText:flavour];
//        assertThat(tableViewCell, notNilValue());
//    }
//}

@end
