# CustomPhotosBrowse
图片轮播，支持本地图片、网络图片


初始化
<pre>
-(id)initWithFrame:(CGRect)frame;

-(id)initWithFrame:(CGRect)frame Photos:(NSMutableArray*)array;
</pre>


可设置参数
<pre>
@property(nonatomic,assign) BOOL displayPageNumber; //是否显示页码
@property(nonatomic,assign) CGFloat padding; //间隔

@property(nonatomic,assign) BOOL isInfiniteLoop; //是否无限循环

@property(nonatomic,assign) BOOL autoScroll;    //是否自动滚动
@property (nonatomic,assign) CGFloat autoScrollTimeInterval;	
</pre>

点击代理
<pre>
- (void)photosBrowse:(CustomPhotosBrowse *)photosBrowse didSelectItemAtIndex:(NSInteger)index
</pre>


![](https://farm8.staticflickr.com/7650/17050044796_7fbc5fa212_o_d.gif)