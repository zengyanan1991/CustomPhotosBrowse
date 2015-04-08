//
//  CustomPhoto.h
//
//  Created by a on 15/1/28.
//  Copyright (c) 2015年 lookfeel. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface CustomPhoto : NSObject

@property (nonatomic, readonly) UIImage *image;
@property (nonatomic, readonly) NSURL *photoURL;

+ (CustomPhoto *)photoWithImage:(UIImage *)image;
+ (CustomPhoto *)photoWithURL:(NSURL *)url;

- (id)initWithImage:(UIImage *)image;
- (id)initWithURL:(NSURL *)url;

@end
