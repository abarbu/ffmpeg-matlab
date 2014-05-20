FFMPEG_LDFLAGS = -lavutil -lavformat -lavcodec -lz -lavutil -lm -lswscale

ffmpeg: ffmpeg-matlab.c
	mex -v CC=gcc CFLAGS='$$CFLAGS -Wall -std=c99' LDFLAGS='$$LDFLAGS $(FFMPEG_LDFLAGS)' ffmpeg-matlab.c -o ffmpeg
