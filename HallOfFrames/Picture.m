//
//  Picture.m
//  HallOfFrames
//
//  Created by Yemi Ajibola on 1/20/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

#import "Picture.h"

@implementation Picture

- (instancetype)initWithImage:(UIImage*)image AndFrameColor:(UIColor *)color
{
    self = [super init];
    if (self) {
        self.image = image;
        self.frameColor = color;
    }
    return self;
}

@end
