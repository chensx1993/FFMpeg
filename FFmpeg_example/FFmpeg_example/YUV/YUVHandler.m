//
//  YUVHandler.m
//  FFmpeg_example
//
//  Created by chensx on 2019/6/11.
//  Copyright © 2019 chensx. All rights reserved.
//

#import "YUVHandler.h"

@implementation YUVHandler

void simplest_yuv420_split(char *url, int w, int h,int num) {
    FILE *fp = fopen(url, "rb+");
    
    FILE *fp1 = fopen("/Users/hsbcnet.mobile.ukhsbcnet.mobile.uk/Desktop/test/output_420_y.yuv","wb+");
    FILE *fp2 = fopen("/Users/hsbcnet.mobile.ukhsbcnet.mobile.uk/Desktop/test/output_420_u.yuv","wb+");
    FILE *fp3 = fopen("/Users/hsbcnet.mobile.ukhsbcnet.mobile.uk/Desktop/test/output_420_v.yuv","wb+");
    
    unsigned char *pic = (unsigned char *)malloc(w * h * 3/2);
    
    for (int i = 0; i < num; i ++) {
        fread(pic, 1, w * h * 3 / 2, fp);
        //Y
        fwrite(pic,1,w*h,fp1);
        //U
        fwrite(pic+w*h,1,w*h/4,fp2);
        //V
        fwrite(pic+w*h*5/4,1,w*h/4,fp3);
    }
    
    free(pic);
    fclose(fp);
    fclose(fp1);
    fclose(fp2);
    fclose(fp3);
}

@end
