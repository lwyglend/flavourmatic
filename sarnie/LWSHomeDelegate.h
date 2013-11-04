//
//  LWSHomeDelegate.h
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LWSFlavourWheel.h"

@interface LWSHomeDelegate : NSObject <UIPickerViewDelegate>

+(instancetype)homeDelegateWithFlavourWheel:(LWSFlavourWheel *)flavourWheel;

@end
