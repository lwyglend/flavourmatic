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
@property (nonatomic,strong) UIPickerView *flavourPickerView;
@property (nonatomic, strong) LWSHomeDataSource *homeViewDataSource;
@property (nonatomic, strong) LWSHomeDelegate *homeViewDelegate;


@end

@implementation LWSHomeView

-(void)layoutSubviews
{
    [super layoutSubviews];
}

-(UIPickerView *)setupFlavourPickerView{
    if(! _flavourPickerView) {
        CGRect pickerFrame =CGRectMake(0, 0, 320, 300);
        NSString *flavourPickerAccessibilityText = @"Flavour Picker";
        _flavourPickerView = [[UIPickerView alloc] init];
        _flavourPickerView.delegate = self.homeViewDelegate;
        _flavourPickerView.dataSource = self.homeViewDataSource;
        _flavourPickerView.showsSelectionIndicator = YES;
        [_flavourPickerView setFrame:pickerFrame];
        [_flavourPickerView setAccessibilityLabel:flavourPickerAccessibilityText];
    }
    return _flavourPickerView;
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

-(void)setupSubviews
{
    _findFlavourMatchesButton = [self setupFindFlavourMatchesButton];
    [self addSubview:self.findFlavourMatchesButton];
    
    _flavourPickerView = [self setupFlavourPickerView];
    [self addSubview:self.flavourPickerView];
}

-(id)initWithDataSource:(LWSHomeDataSource *)dataSource andDelegate:(LWSHomeDelegate *)delegate
{
    self = [super init];
    _homeViewDataSource = dataSource;
    _homeViewDelegate = delegate;
    [self setupSubviews];
    return self;
}

+(instancetype)homeViewWithDataSource:(LWSHomeDataSource *)dataSource andDelegate:(LWSHomeDelegate *)delegate
{
    return [[LWSHomeView alloc] initWithDataSource:dataSource andDelegate:delegate];
}



@end
