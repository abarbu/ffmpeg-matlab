FFMPEG_LDFLAGS = -lavutil -lavformat -lavcodec -lz -lavutil -lm -lswscale

ffmpeg: ffmpeg-matlab.c
	mex -v CC=gcc CFLAGS='$$CFLAGS -Wall -std=c99' ffmpeg-matlab.c -output ffmpeg $(FFMPEG_LDFLAGS)
