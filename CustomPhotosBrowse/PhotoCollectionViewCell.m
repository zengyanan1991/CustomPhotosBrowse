//
//  PhotoCollectionViewCell.m
//
//  Created by a on 15/1/28.
//  Copyright (c) 2015年 lookfeel. All rights reserved.
//

#import "PhotoCollectionViewCell.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import <SDWebImage/UIImageView+WebCache.h>

@implementation PhotoCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        frameRect = frame;
        [self createView];
    }
    return self;
}

-(void)createView{
    self.photoView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, frameRect.size.height)];
    [self addSubview:self.photoView];
}

-(void)reloadCellWith:(CustomPhoto*)photo{
    if (photo.image) {
        [self.photoView setImage:photo.image];
    }else if (photo.photoURL){
        if ([[[photo.photoURL scheme] lowercaseString] isEqualToString:@"assets-library"]) {
            
            ALAssetsLibrary *assetslibrary = [[ALAssetsLibrary alloc] init];
            [assetslibrary assetForURL:photo.photoURL
                           resultBlock:^(ALAsset *asset){
                               ALAssetRepresentation *rep = [asset defaultRepresentation];
                               CGImageRef iref = [rep fullScreenImage];
                               if (iref) {
                                   UIImage *img = [UIImage imageWithCGImage:iref];
                                   [self.photoView setImage:img];
                               }
                           }
                          failureBlock:^(NSError *error) {
                              
                          }];
            
        }else if ([photo.photoURL isFileURL]){
            UIImage *img = [UIImage imageWithContentsOfFile:photo.photoURL.path];
            [self.photoView setImage:img];
            
        }else{
            [self.photoView sd_setImageWithURL:photo.photoURL];
        }
    }
}

@end
