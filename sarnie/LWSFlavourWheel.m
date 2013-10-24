//
//  LWSFlavourCollection.m
//  sarnie
//
//  Created by Laura Wyglendacz on 11/09/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import "LWSFlavourWheel.h"

@interface LWSFlavourWheel()
@end

@implementation LWSFlavourWheel

-(BOOL)flavour:(NSString*)someFlavour matches:(NSString*)anotherFlavour
{
    NSArray *matches = [self.flavourMatches objectForKey:someFlavour];
    if([matches containsObject:anotherFlavour])
    {
        return YES;
    }
    return NO;
}

- (id)init
{
    self = [super init];
    if (self) {
        _flavours = [self populateFlavours];
        _flavourMatches = [self populateFlavourMatches];
    }
    return self;
}

-(NSDictionary *)populateFlavourMatches
{
    NSArray *coffeeFlavourMatches = @[@"Chocolate"];
    NSArray *chocolateFlavourMatches = @[@"Coffee"];
    
    NSString *coffee = @"Coffee";
    NSString *chocolate = @"Chocolate";
    
    NSArray *flavourMatches = @[coffeeFlavourMatches,
                                chocolateFlavourMatches];
    
    NSArray *flavours = @[coffee, chocolate];
    
    return [NSDictionary dictionaryWithObjects:flavourMatches forKeys:flavours];
}

-(NSDictionary *)populateFlavours
{
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
    
    NSArray *flavoursByGroup = @[ marineFlavoursByGroup,
                                  sulphurusFlavoursByGroup,
                                  mustardyFlavoursByGroup,
                                  earthyFlavoursByGroup,
                                  cheesyFlavoursByGroup,
                                  meatyFlavoursByGroup,
                                  roastedFlavoursByGroup,
                                  floralFruityFlavoursByGroup,
                                  brambleAndHedgeFlavoursByGroup,
                                  citrussyFlavoursByGroup,
                                  creamyFruityFlavoursByGroup,
                                  freshFruityFlavoursByGroup,
                                  woodlandFlavoursByGroup,
                                  spicyFlavoursByGroup,
                                  greenAndGrassyFlavoursByGroup,
                                  brineAndSaltFlavoursByGroup ] ;
    
    
    NSArray *flavourGroups = @[marineFlavourGroup,
                               sulphurusFlavourGroup,
                               mustardyFlavourGroup,
                               earthyFlavourGroup,
                               cheesyFlavourGroup,
                               meatyFlavourGroup,
                               roastedFlavourGroup,
                               floralFruityFlavourGroup,
                               brambleAndHedgeFlavourGroup,
                               citrussyFlavourGroup,
                               creamyFruityFlavourGroup,
                               freshFruityFlavourGroup,
                               woodlandFlavourGroup,
                               spicyFlavourGroup,
                               greenAndGrassyFlavourGroup,
                               brineAndSaltFlavourGroup ];
    
    return [NSDictionary dictionaryWithObjects:flavoursByGroup forKeys:flavourGroups];
}

@end
