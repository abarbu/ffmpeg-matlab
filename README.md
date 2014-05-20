* FFmpeg/libav bindings for Matlab

These bindings use ffmpeg to read videos into Matlab. Just run make
and addpath this directory.

Frames are decoded on the fly. The API is tiny and simple:

```matlab
ffmpegOpenVideo('video.mov');
imshow(ffmpegGetFrame());
ffmpegNextFrame();
imshow(ffmpegGetFrame());
ffmpegCloseVideo();
```

An example of writing video frames to disk:

```matlab
ffmpegOpenVideo('video.mp4');
frame = 1;
while(not(ffmpegIsFinished()))
    imwrite(ffmpegGetFrame(),sprintf('frame-%06d.ppm',frame));
    sprintf('frame-%06d.ppm',frame)
    frame = ffmpegNextFrame();
end
ffmpegCloseVideo();
```

For the moment only one video can be open at a time.


















     This repository contains software developed by the Purdue University under
     the DARPA Mind's Eye program. This work was supported, in part, by NSF
     grant CCF-0438806, by the Naval Research Laboratory under Contract
     Number N00173-10-1-G023, by the Army Research Laboratory accomplished
     under Cooperative Agreement Number W911NF-10-2-0060, and by
     computational resources provided by Information Technology at Purdue
     through its Rosen Center for Advanced Computing.  Any views, opinions,
     findings, conclusions, or recommendations contained or expressed in
     this document or material are those of the author(s) and do not
     necessarily reflect or represent the views or official policies,
     either expressed or implied, of NSF, the Naval Research Laboratory,
     the Office of Naval Research, the Army Research Laboratory, or the
     U.S. Government.  The U.S. Government is authorized to reproduce and
     distribute reprints for Government purposes, notwithstanding any
     copyright notation herein.
