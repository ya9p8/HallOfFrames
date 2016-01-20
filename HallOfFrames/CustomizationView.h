//
//  CustomizationView.h
//  HallOfFrames
//
//  Created by Yemi Ajibola on 1/20/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PictureCollectionViewCell.h"

@protocol CustomizationViewProtocol <NSObject>

-(void) customizationViewCell:(id)cell didTapButton:(UIButton*) button;


@end

@interface CustomizationView : UIView

@property (nonatomic, assign) id <CustomizationViewProtocol> delegate;


@end
