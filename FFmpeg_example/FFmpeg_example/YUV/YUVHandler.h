//
//  YUVHandler.h
//  FFmpeg_example
//
//  Created by chensx on 2019/6/11.
//  Copyright © 2019 chensx. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YUVHandler : NSObject

/**
 * Split Y, U, V planes in YUV420P file.
 * @param url  Location of Input YUV file.
 * @param w    Width of Input YUV file.
 * @param h    Height of Input YUV file.
 * @param num  Number of frames to process.
 *
 */
int simplest_yuv420_split(const char *url, int w, int h,int num);

int simplest_yuv420_gray(const char *url, int w, int h, int num);

@end

NS_ASSUME_NONNULL_END
