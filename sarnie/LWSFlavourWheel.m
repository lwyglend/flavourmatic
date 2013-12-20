//
//  LWSFlavourCollection.m
//  sarnie
//
//  Created by Laura Wyglendacz on 11/09/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import "LWSFlavourWheel.h"

@implementation LWSFlavourWheel

-(NSUInteger)numberOfFlavourGroups
{
//    return [[[self.flavoursByGroup objectEnumerator] allObjects] count];
        return [[[self.flavoursByGroup keyEnumerator] allObjects] count];
}

-(NSUInteger)numberOfFlavours
{
    return [self.allFlavours count];
}

-(BOOL)flavour:(NSString*)someFlavour matches:(NSString*)anotherFlavour
{
    NSArray *matches = [self.flavourMatches objectForKey:someFlavour];
    if([matches containsObject:anotherFlavour])
    {
        return YES;
    }
    return NO;
}

-(NSDictionary *)populateFlavoursByGroup
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

-(NSDictionary *)populateFlavourMatches
{
    NSArray *oilyFishFlavourMatches = @[];
    NSArray *caviarFlavourMatches = @[];
    NSArray *oysterFlavourMatches = @[];
    NSArray *whiteFishFlavourMatches = @[];
    NSArray *shellfishFlavourMatches = @[];
    NSArray *eggFlavourMatches = @[];
    NSArray *asparagusFlavourMatches = @[];
    NSArray *horseradishFlavourMatches = @[];
    NSArray *caperFlavourMatches = @[];
    NSArray *watercressFlavourMatches = @[];
    NSArray *celeryFlavourMatches = @[];
    NSArray *potatoFlavourMatches = @[];
    NSArray *beetrootFlavourMatches = @[];
    NSArray *cuminFlavourMatches = @[];
    NSArray *aubergineFlavourMatches = @[];
    NSArray *mushroomFlavourMatches = @[];
    NSArray *softCheeseFlavourMatches = @[];
    NSArray *hardCheeseFlavourMatches = @[];
    NSArray *blueCheeseFlavourMatches = @[];
    NSArray *washedRindCheeseFlavourMatches = @[];
    NSArray *goatsCheeseFlavourMatches = @[];
    NSArray *lambFlavourMatches = @[];
    NSArray *beefFlavourMatches = @[];
    NSArray *liverFlavourMatches = @[];
    NSArray *blackPuddingFlavourMatches = @[];
    NSArray *porkFlavourMatches = @[];
    NSArray *chickenFlavourMatches = @[];
    NSArray *peanutFlavourMatches = @[];
    NSArray *coffeeFlavourMatches = @[@"Chocolate"];
    NSArray *chocolateFlavourMatches = @[@"Coffee", @"Cardamom", @"Vanilla"];
    NSArray *whiteChocolateFlavourMatches = @[];
    NSArray *vanillaFlavourMatches = @[];
    NSArray *corianderSeedFlavourMatches = @[];
    NSArray *blueberryFlavourMatches = @[];
    NSArray *roseFlavourMatches = @[];
    NSArray *figFlavourMatches = @[];
    NSArray *raspberryFlavourMatches = @[];
    NSArray *blackberryFlavourMatches = @[];
    NSArray *blackcurrantFlavourMatches = @[];
    NSArray *mintFlavourMatches = @[];
    NSArray *thymeFlavourMatches = @[];
    NSArray *juniperFlavourMatches = @[];
    NSArray *sageFlavourMatches = @[];
    NSArray *rosemaryFlavourMatches = @[];
    NSArray *cardamomFlavourMatches = @[];
    NSArray *gingerFlavourMatches = @[];
    NSArray *lemonFlavourMatches = @[];
    NSArray *limeFlavourMatches = @[];
    NSArray *grapefruitFlavourMatches = @[];
    NSArray *orangeFlavourMatches = @[];
    NSArray *mangoFlavourMatches = @[];
    NSArray *coconutFlavourMatches = @[];
    NSArray *peachFlavourMatches = @[];
    NSArray *apricotFlavourMatches = @[];
    NSArray *melonFlavourMatches = @[];
    NSArray *bananaFlavourMatches = @[];
    NSArray *pearFlavourMatches = @[];
    NSArray *appleFlavourMatches = @[];
    NSArray *pineappleFlavourMatches = @[];
    NSArray *strawberryFlavourMatches = @[];
    NSArray *tomatoFlavourMatches = @[];
    NSArray *rhubarbFlavourMatches = @[];
    NSArray *grapeFlavourMatches = @[];
    NSArray *watermelonFlavourMatches = @[];
    NSArray *cherryFlavourMatches = @[];
    NSArray *almondFlavourMatches = @[];
    NSArray *hazelnutFlavourMatches = @[];
    NSArray *walnutFlavourMatches = @[];
    NSArray *chestnutFlavourMatches = @[];
    NSArray *butternutSquashFlavourMatches = @[];
    NSArray *carrotFlavourMatches = @[];
    NSArray *parsnipFlavourMatches = @[];
    NSArray *nutmegFlavourMatches = @[];
    NSArray *cloveFlavourMatches = @[];
    NSArray *cinnamonFlavourMatches = @[];
    NSArray *basilFlavourMatches = @[];
    NSArray *chilliFlavourMatches = @[];
    NSArray *bellPepperFlavourMatches = @[];
    NSArray *peaFlavourMatches = @[];
    NSArray *avocadoFlavourMatches = @[];
    NSArray *corianderLeafFlavourMatches = @[];
    NSArray *parselyFlavourMatches = @[];
    NSArray *dillFlavourMatches = @[];
    NSArray *cucumberFlavourMatches = @[];
    NSArray *aniseFlavourMatches = @[];
    NSArray *saffronFlavourMatches = @[];
    NSArray *oliveFlavourMatches = @[];
    NSArray *prosciuttoFlavourMatches = @[];
    NSArray *baconFlavourMatches = @[];
    NSArray *smokedFishFlavourMatches = @[];
    NSArray *anchovyFlavourMatches = @[];
    
    NSArray *flavourMatches = @[oilyFishFlavourMatches,
                                caviarFlavourMatches,
                                oysterFlavourMatches,
                                whiteFishFlavourMatches,
                                shellfishFlavourMatches,
                                eggFlavourMatches,
                                asparagusFlavourMatches,
                                horseradishFlavourMatches,
                                caperFlavourMatches,
                                watercressFlavourMatches,
                                celeryFlavourMatches,
                                potatoFlavourMatches,
                                beetrootFlavourMatches,
                                cuminFlavourMatches,
                                aubergineFlavourMatches,
                                mushroomFlavourMatches,
                                softCheeseFlavourMatches,
                                hardCheeseFlavourMatches,
                                blueCheeseFlavourMatches,
                                washedRindCheeseFlavourMatches,
                                goatsCheeseFlavourMatches,
                                lambFlavourMatches,
                                beefFlavourMatches,
                                liverFlavourMatches,
                                blackPuddingFlavourMatches,
                                porkFlavourMatches,
                                chickenFlavourMatches,
                                peanutFlavourMatches,
                                coffeeFlavourMatches,
                                chocolateFlavourMatches,
                                whiteChocolateFlavourMatches,
                                vanillaFlavourMatches,
                                corianderSeedFlavourMatches,
                                blueberryFlavourMatches,
                                roseFlavourMatches,
                                figFlavourMatches,
                                raspberryFlavourMatches,
                                blackberryFlavourMatches,
                                blackcurrantFlavourMatches,
                                mintFlavourMatches,
                                thymeFlavourMatches,
                                juniperFlavourMatches,
                                sageFlavourMatches,
                                rosemaryFlavourMatches,
                                cardamomFlavourMatches,
                                gingerFlavourMatches,
                                lemonFlavourMatches,
                                limeFlavourMatches,
                                grapefruitFlavourMatches,
                                orangeFlavourMatches,
                                mangoFlavourMatches,
                                coconutFlavourMatches,
                                peachFlavourMatches,
                                apricotFlavourMatches,
                                melonFlavourMatches,
                                bananaFlavourMatches,
                                pearFlavourMatches,
                                appleFlavourMatches,
                                pineappleFlavourMatches,
                                strawberryFlavourMatches,
                                tomatoFlavourMatches,
                                rhubarbFlavourMatches,
                                grapeFlavourMatches,
                                watermelonFlavourMatches,
                                cherryFlavourMatches,
                                almondFlavourMatches,
                                hazelnutFlavourMatches,
                                walnutFlavourMatches,
                                chestnutFlavourMatches,
                                butternutSquashFlavourMatches,
                                carrotFlavourMatches,
                                parsnipFlavourMatches,
                                nutmegFlavourMatches,
                                cloveFlavourMatches,
                                cinnamonFlavourMatches,
                                basilFlavourMatches,
                                chilliFlavourMatches,
                                bellPepperFlavourMatches,
                                peaFlavourMatches,
                                avocadoFlavourMatches,
                                corianderLeafFlavourMatches,
                                parselyFlavourMatches,
                                dillFlavourMatches,
                                cucumberFlavourMatches,
                                aniseFlavourMatches,
                                saffronFlavourMatches,
                                oliveFlavourMatches,
                                prosciuttoFlavourMatches,
                                baconFlavourMatches,
                                smokedFishFlavourMatches,
                                anchovyFlavourMatches];
    
    return [NSDictionary dictionaryWithObjects:flavourMatches forKeys:self.allFlavours];
}

-(NSArray *)populateAllFlavours
{
    return @[@"Oily Fish", @"Caviar", @"Oyster", @"White Fish", @"Shellfish", @"Egg", @"Asparagus", @"Horseradish", @"Caper", @"Watercress", @"Celery", @"Potato", @"Beetroot", @"Cumin", @"Aubergine", @"Mushroom", @"Soft Cheese", @"Hard Cheese", @"Blue Cheese", @"Washed-rind Cheese", @"Goat's Cheese", @"Lamb", @"Beef", @"Liver", @"Black Pudding", @"Pork", @"Chicken", @"Peanut", @"Coffee", @"Chocolate", @"White Chocolate", @"Vanilla", @"Coriander Seed", @"Blueberry", @"Rose", @"Fig", @"Raspberry", @"Blackberry", @"Blackcurrant", @"Mint", @"Thyme", @"Juniper", @"Sage", @"Rosemary", @"Cardamom", @"Ginger", @"Lemon", @"Lime", @"Grapefruit", @"Orange", @"Mango", @"Coconut", @"Peach", @"Apricot", @"Melon", @"Banana", @"Pear", @"Apple", @"Pineapple", @"Strawberry", @"Tomato", @"Rhubarb", @"Grape", @"Watermelon", @"Cherry", @"Almond", @"Hazelnut", @"Walnut", @"Chestnut", @"Butternut Squash", @"Carrot", @"Parsnip", @"Nutmeg", @"Clove", @"Cinnamon", @"Basil", @"Chilli", @"Bell Pepper", @"Pea", @"Avocado", @"Coriander Leaf", @"Parsley", @"Dill", @"Cucumber", @"Anise", @"Saffron", @"Olive", @"Prosciutto", @"Bacon", @"Smoked Fish", @"Anchovy"];
}

- (id)init
{
    self = [super init];
    if (self) {
        _allFlavours = [self populateAllFlavours];
        _flavoursByGroup = [self populateFlavoursByGroup];
        _flavourMatches = [self populateFlavourMatches];
        _selectedFlavour = NULL;
    }
    return self;
}

@end
