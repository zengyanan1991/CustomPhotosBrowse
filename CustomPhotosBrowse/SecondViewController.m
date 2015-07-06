//
//  SecondViewController.m
//  CustomPhotosBrowse
//
//  Created by yangjie on 15/7/6.
//  Copyright (c) 2015年 a. All rights reserved.
//

#import "SecondViewController.h"
#import "CustomPhotosBrowse.h"

@interface SecondViewController ()<CustomPhotosBrowseDelegate>

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    //本地图片
    NSMutableArray *imageArray = [[NSMutableArray alloc] init];
    CustomPhoto *photo = [CustomPhoto photoWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"img1" ofType:@"png"]]];
    [imageArray addObject:photo];
    
    photo = [CustomPhoto photoWithImage:[UIImage imageNamed:@"img2"]];
    [imageArray addObject:photo];
    
    CustomPhotosBrowse *photosBrowse = [[CustomPhotosBrowse alloc] initWithFrame:CGRectMake(0, 60, IPHONE_WIDTH, 200)];
    [photosBrowse setPadding:10.0];
    photosBrowse.isInfiniteLoop = YES;
    photosBrowse.autoScroll = YES;
    //photosBrowse.delegate = self;
    photosBrowse.autoScrollTimeInterval = 2.0;
    [photosBrowse reloadPhotoBrowseWithPhotoArray:imageArray];
    [self.view addSubview:photosBrowse];
}

- (void)photosBrowse:(CustomPhotosBrowse *)photosBrowse didSelectItemAtIndex:(NSInteger)index{
    
}

-(void)dealloc{
    NSLog(@"SecondViewController dealloc");
}

@end
