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
    
    char *url = (const char*)[[NSBundle mainBundle] pathForResource:@"akiyo_cif" ofType:@"yuv"].UTF8String;
    simplest_yuv420_split(url, 256, 256, 1);
}


@end
