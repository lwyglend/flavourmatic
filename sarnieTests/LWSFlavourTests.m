//
//  algorithmTests.m
//  algorithmTests
//
//  Created by Laura Wyglendacz on 09/08/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#define HC_SHORTHAND
#import <OCHamcrest.h>
#import "LWSFlavourTests.h"
#import "LWSFlavourWheel.h"

@interface LWSFlavourTests()
@property (nonatomic, readonly) LWSFlavourWheel *flavourCollection;
@end

@implementation LWSFlavourTests

- (void)setUp
{
    [super setUp];
    _flavourCollection = [[LWSFlavourWheel alloc] init];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testThatAllFlavourGroupsAreAdded
{
    //given
    NSString *marineFlavourGroup = @"Marine";
    NSString *sulphurusFlavourGroup = @"Sulphurus";
    NSString *mustardyFlavourGroup = @"Mustardy";
    NSString *earthyFlavourGroup = @"Earthy";
    NSString *cheesyFlavourGroup = @"Cheesy";
    NSString *meatyFlavourGroup = @"Meaty";
    NSString *roastedFlavourGroup = @"Roasted";
    NSString *floralFruityFlavourGroup = @"Floral Fruity";
    NSString *brambleAndHedgeFlavourGroup = @"Bramble & Hedge";
    NSString *citrussyFlavourGroup = @"Citrussy";
    NSString *freshFruityFlavourGroup = @"Fresh Fruity";
    NSString *creamyFruityFlavourGroup = @"Creamy Fruity";
    NSString *woodlandFlavourGroup = @"Woodland";
    NSString *spicyFlavourGroup = @"Spicy";
    NSString *greenAndGrassyFlavourGroup = @"Green & Grassy";
    NSString *brineAndSaltFlavourGroup = @"Brine & Salt";
    
    //when
    
    //then
    assertThat( self.flavourCollection.flavours, hasKey(marineFlavourGroup) );
    assertThat( self.flavourCollection.flavours, hasKey(sulphurusFlavourGroup) );
    assertThat( self.flavourCollection.flavours, hasKey(mustardyFlavourGroup) );
    assertThat( self.flavourCollection.flavours, hasKey(earthyFlavourGroup) );
    assertThat( self.flavourCollection.flavours, hasKey(cheesyFlavourGroup) );
    assertThat( self.flavourCollection.flavours, hasKey(meatyFlavourGroup) );
    assertThat( self.flavourCollection.flavours, hasKey(roastedFlavourGroup) );
    assertThat( self.flavourCollection.flavours, hasKey(floralFruityFlavourGroup) );
    assertThat( self.flavourCollection.flavours, hasKey(brambleAndHedgeFlavourGroup) );
    assertThat( self.flavourCollection.flavours, hasKey(citrussyFlavourGroup) );
    assertThat( self.flavourCollection.flavours, hasKey(creamyFruityFlavourGroup) );
    assertThat( self.flavourCollection.flavours, hasKey(freshFruityFlavourGroup) );
    assertThat( self.flavourCollection.flavours, hasKey(woodlandFlavourGroup) );
    assertThat( self.flavourCollection.flavours, hasKey(spicyFlavourGroup) );
    assertThat( self.flavourCollection.flavours, hasKey(greenAndGrassyFlavourGroup) );
    assertThat( self.flavourCollection.flavours, hasKey(brineAndSaltFlavourGroup) );
}

- (void)testThatAllFlavoursByGroupAreAdded
{
    //given
    NSArray *marineFlavoursByGroup = @[@"Oily Fish", @"Caviar", @"Oyster", @"White Fish", @"Shellfish"];
    NSArray *sulphurusFlavoursByGroup = @[@"Egg", @"Asparagus"];
    NSArray *mustardyFlavoursByGroup = @[@"Horseradish", @"Caper", @"Watercress"];
    NSArray *earthyFlavoursByGroup = @[@"Celery", @"Potato", @"Beetroot",@"Cumin",@"Aubergine",@"Mushroom"];
    NSArray *cheesyFlavoursByGroup = @[@"Soft Cheese", @"Hard Cheese", @"Blue Cheese", @"Washed-rind Cheese", @"Goat's Cheese"];
    NSArray *meatyFlavoursByGroup = @[@"Lamb", @"Beef", @"Liver", @"Black Pudding", @"Pork", @"Chicken"];
    NSArray *roastedFlavoursByGroup = @[@"Peanut", @"Coffee", @"Chocolate"];
    NSArray *floralFruityFlavoursByGroup = @[@"White Chocolate", @"Vanilla", @"Coriander Seed", @"Blueberry", @"Rose", @"Fig", @"Raspberry"];
    NSArray *brambleAndHedgeFlavoursByGroup = @[@"Blackberry", @"Blackcurrant", @"Mint", @"Thyme", @"Juniper", @"Sage", @"Rosemary"];
    NSArray *citrussyFlavoursByGroup = @[@"Cardamom", @"Ginger", @"Lemon", @"Lime", @"Grapefruit", @"Orange"];
    NSArray *creamyFruityFlavoursByGroup = @[@"Mango", @"Coconut", @"Peach", @"Apricot", @"Melon", @"Banana"];
    NSArray *freshFruityFlavoursByGroup = @[@"Pear", @"Apple", @"Pineapple", @"Strawberry", @"Tomato", @"Rhubarb", @"Grape", @"Watermelon", @"Cherry"];
    NSArray *woodlandFlavoursByGroup = @[@"Almond", @"Hazelnut", @"Walnut", @"Chestnut", @"Butternut Squash", @"Carrot"];
    NSArray *spicyFlavoursByGroup = @[@"Parsnip", @"Nutmeg", @"Clove", @"Cinnamon", @"Basil"];
    NSArray *greenAndGrassyFlavoursByGroup = @[@"Chilli", @"Bell Pepper", @"Pea", @"Avocado", @"Coriander Leaf", @"Parsley", @"Dill", @"Cucumber", @"Anise", @"Saffron"];
    NSArray *brineAndSaltFlavoursByGroup = @[@"Olive", @"Prosciutto", @"Bacon", @"Smoked Fish", @"Anchovy"];
    
    //when
    
    //then
    assertThat( self.flavourCollection.flavours, hasValue(marineFlavoursByGroup) );
    assertThat( self.flavourCollection.flavours, hasValue(sulphurusFlavoursByGroup) );
    assertThat( self.flavourCollection.flavours, hasValue(mustardyFlavoursByGroup) );
    assertThat( self.flavourCollection.flavours, hasValue(earthyFlavoursByGroup) );
    assertThat( self.flavourCollection.flavours, hasValue(cheesyFlavoursByGroup) );
    assertThat( self.flavourCollection.flavours, hasValue(meatyFlavoursByGroup) );
    assertThat( self.flavourCollection.flavours, hasValue(roastedFlavoursByGroup) );
    assertThat( self.flavourCollection.flavours, hasValue(floralFruityFlavoursByGroup) );
    assertThat( self.flavourCollection.flavours, hasValue(brambleAndHedgeFlavoursByGroup) );
    assertThat( self.flavourCollection.flavours, hasValue(citrussyFlavoursByGroup) );
    assertThat( self.flavourCollection.flavours, hasValue(creamyFruityFlavoursByGroup) );
    assertThat( self.flavourCollection.flavours, hasValue(freshFruityFlavoursByGroup) );
    assertThat( self.flavourCollection.flavours, hasValue(woodlandFlavoursByGroup) );
    assertThat( self.flavourCollection.flavours, hasValue(spicyFlavoursByGroup) );
    assertThat( self.flavourCollection.flavours, hasValue(greenAndGrassyFlavoursByGroup) );
    assertThat( self.flavourCollection.flavours, hasValue(brineAndSaltFlavoursByGroup) );
}

@end
