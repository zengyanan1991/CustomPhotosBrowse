//
//  ViewController.m
//  CustomPhotosBrowse
//
//  Created by a on 15/3/30.
//  Copyright (c) 2015年 a. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //本地图片
    NSMutableArray *imageArray = [[NSMutableArray alloc] init];
    CustomPhoto *photo = [CustomPhoto photoWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"img1" ofType:@"png"]]];
    [imageArray addObject:photo];
    
    photo = [CustomPhoto photoWithImage:[UIImage imageNamed:@"img2"]];
    [imageArray addObject:photo];
    
    CustomPhotosBrowse *photosBrowse = [[CustomPhotosBrowse alloc] initWithFrame:CGRectMake(0, 30, IPHONE_WIDTH, 200)];
    [photosBrowse setPadding:10.0];
    photosBrowse.isInfiniteLoop = YES;
    photosBrowse.autoScroll = YES;
    photosBrowse.delegate = self;
    photosBrowse.autoScrollTimeInterval = 2.0;
    [photosBrowse reloadPhotoBrowseWithPhotoArray:imageArray];
    [self.view addSubview:photosBrowse];
    
    
    //网络图片
    imageArray = [[NSMutableArray alloc] init];
    [imageArray addObject:[CustomPhoto photoWithURL:[NSURL URLWithString:@"https://farm9.staticflickr.com/8757/17073388845_2a59bee250_o_d.jpg"]]];
    [imageArray addObject:[CustomPhoto photoWithURL:[NSURL URLWithString:@"https://farm9.staticflickr.com/8685/17072646731_0532aaacee_o_d.jpg"]]];
    [imageArray addObject:[CustomPhoto photoWithURL:[NSURL URLWithString:@"https://farm8.staticflickr.com/7701/16885598688_3e875b9042_o_d.jpg"]]];
    
    CustomPhotosBrowse *photosBrowse1 = [[CustomPhotosBrowse alloc] initWithFrame:CGRectMake(0, 250, IPHONE_WIDTH, 200)];
    [photosBrowse1 setBackgroundColor:[UIColor lightGrayColor]];
    photosBrowse1.padding = 10.0;
    [photosBrowse1 reloadPhotoBrowseWithPhotoArray:imageArray];
    [self.view addSubview:photosBrowse1];

}

#pragma mark CustomPhotosBrowse delegate
- (void)photosBrowse:(CustomPhotosBrowse *)photosBrowse didSelectItemAtIndex:(NSInteger)index{
    NSLog(@"index:%d",index);
}


@end
