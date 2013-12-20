

#define HC_SHORTHAND
#import <OCHamcrest.h>
#import "LWSFlavourWheelTests.h"
#import "LWSFlavourWheel.h"

@interface LWSFlavourWheelTests()
@property (nonatomic, readonly) LWSFlavourWheel *flavourCollection;
@end

@implementation LWSFlavourWheelTests

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
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(marineFlavourGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(sulphurusFlavourGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(mustardyFlavourGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(earthyFlavourGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(cheesyFlavourGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(meatyFlavourGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(roastedFlavourGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(floralFruityFlavourGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(brambleAndHedgeFlavourGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(citrussyFlavourGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(creamyFruityFlavourGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(freshFruityFlavourGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(woodlandFlavourGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(spicyFlavourGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(greenAndGrassyFlavourGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasKey(brineAndSaltFlavourGroup) );
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
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(marineFlavoursByGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(sulphurusFlavoursByGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(mustardyFlavoursByGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(earthyFlavoursByGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(cheesyFlavoursByGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(meatyFlavoursByGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(roastedFlavoursByGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(floralFruityFlavoursByGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(brambleAndHedgeFlavoursByGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(citrussyFlavoursByGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(creamyFruityFlavoursByGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(freshFruityFlavoursByGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(woodlandFlavoursByGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(spicyFlavoursByGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(greenAndGrassyFlavoursByGroup) );
    assertThat( self.flavourCollection.flavoursByGroup, hasValue(brineAndSaltFlavoursByGroup) );
}

-(void)testThatCorrectNumberOfFlavoursHaveBeenAdded
{
    //given
    NSNumber *expectedNumberOfFlavours = @91;
    
    //when
    NSNumber *result = [NSNumber numberWithUnsignedInteger:[self.flavourCollection numberOfFlavours]];
    
    //then
    assertThat(result, is(expectedNumberOfFlavours));
}

-(void)testThatCorrectNumberOfFlavourGroupsHaveBeenAdded
{
    //given
    NSNumber *expectedNumberOfFlavourGroups = @16;
    
    //when
    NSNumber *result = [NSNumber numberWithUnsignedInteger:[self.flavourCollection numberOfFlavourGroups]];
    
    //then
    assertThat(result, is(expectedNumberOfFlavourGroups));
}

@end
