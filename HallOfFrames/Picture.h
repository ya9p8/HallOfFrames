//
//  Picture.h
//  HallOfFrames
//
//  Created by Yemi Ajibola on 1/20/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Picture : NSObject
@property UIImage* image;
@property UIColor* frameColor;

- (instancetype)initWithImage:(UIImage*)image AndFrameColor:(UIColor *)color;

@end
