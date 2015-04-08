//
//  CustomPhoto.m
//
//  Created by a on 15/1/28.
//  Copyright (c) 2015年 lookfeel. All rights reserved.
//

#import "CustomPhoto.h"

@implementation CustomPhoto


+ (CustomPhoto *)photoWithImage:(UIImage *)image{
    return [[CustomPhoto alloc] initWithImage:image];
}


+ (CustomPhoto *)photoWithURL:(NSURL *)url{
    return [[CustomPhoto alloc] initWithURL:url];
}


- (id)initWithImage:(UIImage *)image{
    if ((self = [super init])) {
        _image = image;
    }
    return self;
}

- (id)initWithURL:(NSURL *)url{
    if ((self = [super init])) {
        _photoURL = [url copy];
    }
    return self;
}

@end
