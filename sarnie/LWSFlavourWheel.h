//
//  LWSFlavourCollection.h
//  sarnie
//
//  Created by Laura Wyglendacz on 11/09/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LWSFlavourWheel : NSObject

@property (nonatomic) NSDictionary *flavours;
@property (nonatomic) NSDictionary *flavourMatches;

-(BOOL) flavour:(NSString*)someFlavour matches:(NSString*)anotherFlavour;

@end
