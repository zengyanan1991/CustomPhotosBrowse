//
//  PhotoCollectionViewCell.h
//
//  Created by a on 15/1/28.
//  Copyright (c) 2015年 lookfeel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomPhoto.h"

@interface PhotoCollectionViewCell : UICollectionViewCell{
    CGRect frameRect;
}

@property(nonatomic,strong)UIImageView *photoView;

-(void)reloadCellWith:(CustomPhoto*)photo;

@end
