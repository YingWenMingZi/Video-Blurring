//
//  UIView+Screenshot.m
//  Video Blurring
//
//  Created by shenjx on 14-2-17.
//  Copyright (c) 2014年 Mike Jaoudi. All rights reserved.
//

#import "UIView+Screenshot.h"

@implementation UIView (Screenshot)
-(UIImage *)convertViewToImage
{
    UIGraphicsBeginImageContext(self.bounds.size);
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
@end
