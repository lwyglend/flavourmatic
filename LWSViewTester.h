//
//  LWSViewTester.h
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LWSViewTester : NSObject

+(NSNumber *)numberOfUIButtonsIn:(NSArray *)subviews;
+(UIView *)findFirstUIViewIn:(NSArray *)subviews withLabelText:(NSString *)expectedText;
+(UIView *)findFirstUIViewIn:(NSArray *)subviews withAccessibilityLabelText:(NSString *)expectedText;
+(void)assertThatFrameOriginAndSizeIsNonZero:(UIView*)view;

@end
