//
//  Testc.c
//  Video
//
//  Created by Tung Lam Chan on 4/2/2021.
//

#include "Testc.h"

void printHello(void) {
    printf("Hello C.\n");
}

void ffmpegTest(void) {
    avdevice_register_all();
    AVInputFormat *iformat = av_find_input_format("avfoundation");
    
    AVFormatContext *fmtCtx;
    char *deviceName = ":0";
    AVDictionary *options = NULL;
    char errors[1024];
    int ret = avformat_open_input(&fmtCtx, deviceName, iformat, &options);
    if (ret < 0) {
        av_strerror(ret, errors, 1024);
        printf(stderr, "Faild to open audio device, [%d]%s/n", ret, errors);
        return;
    }
    printf("Hello C.\n");
    av_log_set_level(AV_LOG_DEBUG);
    av_log(NULL, AV_LOG_DEBUG, "Hello, av log!\n");
}
