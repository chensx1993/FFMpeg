//
//  YUVHandler.m
//  FFmpeg_example
//
//  Created by chensx on 2019/6/11.
//  Copyright © 2019 chensx. All rights reserved.
//

#import "YUVHandler.h"

#define kOutPutUrl "/Users/hsbcnet.mobile.ukhsbcnet.mobile.uk/Desktop/test/"

@implementation YUVHandler

int simplest_yuv420_split(const char *url, int w, int h,int num) {
    FILE *fp = fopen(url, "rb+");
    
    FILE *fp1 = fopen(outputUrl("output_420_y.yuv"),"wb+");
    FILE *fp2 = fopen(outputUrl("output_420_u.yuv"),"wb+");
    FILE *fp3 = fopen(outputUrl("output_420_v.yuv"),"wb+");
    
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
    
    return 0;
}

int simplest_yuv420_gray(const char *url, int w, int h, int num) {
    FILE *fp = fopen(url, "rb+");
    FILE *fp1 = fopen(outputUrl("output_gray.yuv"), "wb+");
    unsigned char *pic = (unsigned char *)malloc(w * h * 3/2);
    
    for (int i = 0; i < num; i ++) {
        fread(pic, 1, w*h*3/2, fp);
        
        //Gray
        memset(pic+w*h, 128, w*h/2);
        fwrite(pic, 1, w*h*3/2, fp1);
    }
    
    free(pic);
    fclose(fp);
    fclose(fp1);
    return 0;
}

const char * outputUrl(const char *fileName) {
    char *outputUrl = "/Users/hsbcnet.mobile.ukhsbcnet.mobile.uk/Desktop/test/";
    char *fileUrl = (char *)malloc(strlen(outputUrl) + strlen(fileName));
    sprintf(fileUrl, "%s%s", outputUrl, fileName);
    return fileUrl;
}

@end
