//
//  LWSHomeView.m
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import "LWSHomeView.h"

@interface LWSHomeView ()

@property (nonatomic,strong) UIButton *findFlavourMatchesButton;

@end

@implementation LWSHomeView

-(void)layoutSubviews
{
    [super layoutSubviews];
}

- (UIButton *)setupFindFlavourMatchesButton
{
    if(!_findFlavourMatchesButton) {
        CGRect buttonFrame = CGRectMake(60, 360, 200, 60);
        NSString *buttonText = @"Find matching flavours!";
        _findFlavourMatchesButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_findFlavourMatchesButton setFrame:buttonFrame];
        [_findFlavourMatchesButton setTitle:buttonText forState:UIControlStateNormal] ;
        [_findFlavourMatchesButton setAccessibilityLabel:buttonText];
    }
    return _findFlavourMatchesButton;
}

-(id)init
{
    self = [super init];
    _findFlavourMatchesButton = [self setupFindFlavourMatchesButton];
    [self addSubview:self.findFlavourMatchesButton];
    return self;
}

+(instancetype)homeView
{
    return [[LWSHomeView alloc] init];
}



@end
