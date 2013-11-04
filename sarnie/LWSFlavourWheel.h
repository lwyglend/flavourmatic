//
//  LWSFlavourCollection.h
//  sarnie
//
//  Created by Laura Wyglendacz on 11/09/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LWSFlavourWheel : NSObject

@property (nonatomic, readonly) NSDictionary *flavours;
@property (nonatomic, readonly) NSDictionary *flavourMatches;

-(BOOL) flavour:(NSString*)someFlavour matches:(NSString*)anotherFlavour;
-(NSUInteger)numberOfFlavours;

@end
