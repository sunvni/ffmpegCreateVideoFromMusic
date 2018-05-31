ffmpeg -i m1/audio2.mp3 -filter_complex "[0:a]avectorscope=s=1280x720,pad=1280:720[vs]; [0:a]showwaves=s=1280x202:mode=line[sw]; [vs][sw]overlay=0:H-h,drawtext=fontfile=m1/Verdana.ttf:fontcolor=white:x=10:y=10:text='\"Hot DJ\" by Hot DJ'[out]" -map "[out]" -map 0:a -c:v libx264 -preset fast -crf 18 -c:a copy m1/output4.mkv


ffmpeg -i m1/audio2.mp3 -filter_complex "[0:a]avectorscope=s=640x518,pad=1280:720[vs]; [0:a]showspectrum=mode=separate:color=intensity:scale=cbrt:s=640x518[ss]; [0:a]showwaves=s=1280x202:mode=line[sw]; [vs][ss]overlay=w[bg]; [bg][sw]overlay=0:H-h,drawtext=fontfile=m1/Verdana.ttf:fontcolor=white:x=10:y=10:text='\"Hot DJ\" by Hot DJ'[out]" -map "[out]" -map 0:a -c:v libx264 -preset fast -crf 18 -c:a copy m1/output3.mkv


ffmpeg -i m1/audio2.mp3 -filter_complex \
"[0:a]aphasemeter=s=1280x720:mpc=cyan,format=yuv420p[v]" \
-map "[v]" -map 0:a m1/output6.mkv


ffmpeg -loop 1 -i m1/image01.jpg -i m1/output5.mkv -filter_complex "overlay=(W-w)/2:(H-h)/2:shortest=1,format=yuv420p" -c:a copy m1/final.mp4


ffmpeg -loop_input -f image2 -i m1/image01.jpg -r 25 -vframes 250 -an -vcodec m1/output7.mkv

ffmpeg -i m1/audio.mp3 -filter_complex "[0:a]avectorscope=s=640x518,pad=1280:720[vs]; [0:a]showspectrum=mode=separate:color=intensity:scale=cbrt:s=640x518[ss]; [0:a]showwaves=s=1280x202:mode=line[sw]; [vs][ss]overlay=w[bg]; [bg][sw]overlay=0:H-h,drawtext=fontfile=m1/Verdana.ttf:fontcolor=white:x=10:y=10:text='\"Hot DJ\" by Hot DJ'[out]" -map "[out]" -map 0:a -c:v libx264 -preset fast -crf 18 -c:a copy output.mkv



ffmpeg -i m1/audio.mp3 -filter_complex "[0:a]avectorscope=s=640x518,pad=1280:720[vs];  [0:a]showwaves=s=1280x202:mode=line[sw];[vs][sw]overlay=0:H-h,drawtext=fontfile=m1/Verdana.ttf:fontcolor=white:x=10:y=10:text='\"Hot DJ\" channel'[out]" -map "[out]" -map 0:a -c:v libx264 -crf 18 -c:a copy output.mkv




ffmpeg -loop 1 -framerate 1/10 -i 20170118/2/image%02d.jpg -i 20170118/2/audio.wav -c:v libx264 -preset medium -tune stillimage -crf 18 -c:a copy -shortest -pix_fmt yuv420p ../output/20170118/2/video.mkv
ＷＢＣ最後の１人は平野佳寿！巨人沢村を１歩リード

