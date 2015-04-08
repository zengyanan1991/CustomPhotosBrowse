//
//  CustomPhotosBrowse.h
//
//  Created by a on 15/1/28.
//  Copyright (c) 2015年 lookfeel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomPhoto.h"

#define IPHONE_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define IPHONE_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@class CustomPhotosBrowse;
@protocol CustomPhotosBrowseDelegate <NSObject>

- (void)photosBrowse:(CustomPhotosBrowse *)photosBrowse didSelectItemAtIndex:(NSInteger)index;

@end

@interface CustomPhotosBrowse : UIView<UICollectionViewDataSource,UIScrollViewAccessibilityDelegate,UICollectionViewDelegateFlowLayout>{
    
    CGRect frameRect;
    
    UICollectionView *photoCollectionView;
    NSMutableArray *photoArray;
    int totalItemsCount;
    
    UILabel *pageNumberLabel;
    
    NSTimer *autoScrollTimer;
}


@property(nonatomic,assign) BOOL displayPageNumber; //是否显示页码
@property(nonatomic,assign) CGFloat padding; //间隔

@property(nonatomic,assign) BOOL isInfiniteLoop; //是否无限循环

@property(nonatomic,assign) BOOL autoScroll;    //是否自动滚动
@property (nonatomic,assign) CGFloat autoScrollTimeInterval;


@property (nonatomic, weak) id<CustomPhotosBrowseDelegate> delegate;


-(id)initWithFrame:(CGRect)frame;

-(id)initWithFrame:(CGRect)frame Photos:(NSMutableArray*)array;

-(void)reloadPhotoBrowseWithPhotoArray:(NSMutableArray*)array;


@end
