//
//  ViewController.m
//  FFmpeg_example
//
//  Created by chensx on 2019/5/27.
//  Copyright © 2019 chensx. All rights reserved.
//

#import "ViewController.h"
#import "YUVHandler.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 说明：yuv文件里面没有格式的标志，所以需要提前预知其宽高和格式，然后再解析
    
    const char *url = [[NSBundle mainBundle] pathForResource:@"lena_256x256_yuv420p" ofType:@"yuv"].UTF8String;
    simplest_yuv420_split(url, 256, 256, 1);
    
    simplest_yuv420_gray(url,256,256,1);
}


@end
