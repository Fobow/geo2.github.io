for f in static/video_o/*.mp4; do
    name=$(basename "$f")
    ffmpeg -i "$f" -vcodec libx264 -acodec aac -movflags +faststart "static/video/$name"
done