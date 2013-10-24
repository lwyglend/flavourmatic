//
//  LWSflavourMatchTests.m
//  sarnie
//
//  Created by Laura Wyglendacz on 07/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#define HC_SHORTHAND
#import <OCHamcrest.h>
#import "LWSFlavourMatchTests.h"
#import "LWSFlavourWheel.h"

@interface LWSFlavourMatchTests()
@property (nonatomic, readonly) LWSFlavourWheel *flavourCollection;
@property (nonatomic, readonly) NSString *coffee;
@property (nonatomic, readonly) NSString *expectedToMatchCoffee;
@property (nonatomic, readonly) NSString *expectedNotToMatchCoffee;
@property (nonatomic, readonly) NSString *nonExistentFlavour;
@end

@implementation LWSFlavourMatchTests

- (void)setUp
{
    [super setUp];
    _coffee = @"Coffee";
    _expectedToMatchCoffee = @"Chocolate";
    _expectedNotToMatchCoffee = @"Oily Fish";
    _nonExistentFlavour = @"Bubblegum";
    _flavourCollection = [[LWSFlavourWheel alloc] init];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

-(void)testThatResultIsTrueWhenTwoFlavoursMatch
{
    //given
    
    //when
    BOOL matchesTwoFlavoursThatMatch = [self.flavourCollection flavour:self.coffee matches:self.expectedToMatchCoffee];
    
    //then
    assertThatBool(matchesTwoFlavoursThatMatch, is(@YES));
}

-(void)testThatResultIsFalseWhenTwoFlavoursDoNotMatch
{
    //given
    
    
    //when
    BOOL matchesTwoFlavoursThatDoNotMatch = [self.flavourCollection flavour:self.coffee matches:self.expectedNotToMatchCoffee];
    
    //then
    assertThatBool(matchesTwoFlavoursThatDoNotMatch, is(@NO));
}

-(void)testThatResultIsFalseWhenAFlavourIsMatchedWithItself
{
    //given
    
    
    //when
    BOOL matchesAFlavourWithItself = [self.flavourCollection flavour:self.coffee matches:self.coffee];
    
    //then
    assertThatBool(matchesAFlavourWithItself, is(@NO));
    
}

-(void)testThatResultIsFalseWhenAFlavourIsMatchedWithANonExistentFlavour
{
    //given
    
    
    //when
    BOOL matchesAFlavourWithANonExistentFlavour = [self.flavourCollection flavour:self.coffee matches:self.nonExistentFlavour];
    
    //then
    assertThatBool(matchesAFlavourWithANonExistentFlavour, is(@NO));
    
}

@end

