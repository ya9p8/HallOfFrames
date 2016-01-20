//
//  CustomizationView.m
//  HallOfFrames
//
//  Created by Yemi Ajibola on 1/20/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

#import "CustomizationView.h"

@implementation CustomizationView



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/



- (IBAction)onColorButtonTapped:(UIButton *)sender {
    [self.delegate didTapButton:sender];
    //[self.view setHidden:YES];
}



@end
