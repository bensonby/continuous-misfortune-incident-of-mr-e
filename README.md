# Piano Score with Video for E先生連環不幸事件

offset: 40:01.995

## Merging video with audio

```
# Time offset is obtained by matching the audio wave forms
ffmpeg -ss 40:10.000 -to 44:39.000 -i IMG_0643.MOV -ss 0:08.005 -t 4:29.0 -i continuous-compressor-reverb-v01.wav -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 output.mp4
```

## Generating png from score-mini.pdf

Warning: https://stackoverflow.com/questions/52998331/imagemagick-security-policy-pdf-blocking-conversion

- density is 100 for video 1280x720
- 150 for video 1920x1080

```
mkdir images
convert -density 150 score-mini.pdf images/output.png
# generated images/output-0.png, output-1.png, etc.
```

## Adding score image to video
```
ffmpeg -i output.mp4 \
-f lavfi -i "color=white@0.93:s=1181x295,format=rgba" \
-i images/output-0.png \
-i images/output-1.png \
-i images/output-2.png \
-i images/output-3.png \
-i images/output-4.png \
-i images/output-5.png \
-i images/output-6.png \
-i images/output-7.png \
-i images/output-8.png \
-i images/output-9.png \
-i images/output-10.png \
-i images/output-11.png \
-i images/output-12.png \
-i images/output-13.png \
-i images/output-14.png \
-i images/output-15.png \
-i images/output-16.png \
-i images/output-17.png \
-i images/output-18.png \
-i images/output-19.png \
-i images/output-20.png \
-filter_complex \
"[0:v][1:v] overlay=739:0[x]; \
[x][2:v] overlay=739:0:enable='between(t,0,13)'[x]; \
[x][3:v] overlay=739:0:enable='between(t,13,24)'[x]; \
[x][4:v] overlay=739:0:enable='between(t,24,35)'[x]; \
[x][5:v] overlay=739:0:enable='between(t,35,48)'[x]; \
[x][6:v] overlay=739:0:enable='between(t,48,57)'[x]; \
[x][7:v] overlay=739:0:enable='between(t,57,68)'[x]; \
[x][8:v] overlay=739:0:enable='between(t,68,79)'[x]; \
[x][9:v] overlay=739:0:enable='between(t,79,93.5)'[x]; \
[x][10:v] overlay=739:0:enable='between(t,93.5,108)'[x]; \
[x][11:v] overlay=739:0:enable='between(t,108,126)'[x]; \
[x][12:v] overlay=739:0:enable='between(t,126,143)'[x]; \
[x][13:v] overlay=739:0:enable='between(t,143,158)'[x]; \
[x][14:v] overlay=739:0:enable='between(t,158,169)'[x]; \
[x][15:v] overlay=739:0:enable='between(t,169,177)'[x]; \
[x][16:v] overlay=739:0:enable='between(t,177,183.5)'[x]; \
[x][17:v] overlay=739:0:enable='between(t,183.5,196)'[x]; \
[x][18:v] overlay=739:0:enable='between(t,196,207.5)'[x]; \
[x][19:v] overlay=739:0:enable='between(t,207.5,225)'[x]; \
[x][20:v] overlay=739:0:enable='between(t,225,239)'[x]; \
[x][21:v] overlay=739:0:enable='between(t,239,253.5)'[x]; \
[x][22:v] overlay=739:0:enable='gt(t,253.5)'[x]; \
[x]fade=t=in:st=0:d=0.5, fade=t=out:st=268:d=1[x];
[0:a] afade=t=out:st=268.5:d=0.5[xa]
" -pix_fmt yuv420p \
-map "[x]" -map "[xa]" \
-t 269 output2.mp4
```
