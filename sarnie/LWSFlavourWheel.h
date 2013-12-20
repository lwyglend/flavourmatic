//
//  LWSFlavourCollection.h
//  sarnie
//
//  Created by Laura Wyglendacz on 11/09/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LWSFlavourWheel : NSObject

@property (nonatomic, readonly) NSArray *allFlavours;
@property (nonatomic, readonly) NSDictionary *flavoursByGroup;
@property (nonatomic, readonly) NSDictionary *flavourMatches;
@property (nonatomic, readwrite) NSString *selectedFlavour;


-(BOOL) flavour:(NSString*)someFlavour matches:(NSString*)anotherFlavour;
-(NSUInteger)numberOfFlavours;
-(NSUInteger)numberOfFlavourGroups;

@end
