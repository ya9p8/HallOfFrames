//
//  CustomizationView.h
//  HallOfFrames
//
//  Created by Yemi Ajibola on 1/20/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomizationViewDelegate <NSObject>

-(void)didTapButton:(UIButton*) button;


@end

@interface CustomizationView : UIView

@property (nonatomic, assign) id <CustomizationViewDelegate> delegate;


@end
