# PROJECT-T

## Installation

```
pip install -r requirement.txt
```

## Quick Start:

example online: 

```
python3 pipeline.py --link "https://www.youtube.com/watch?v=9pArcK9TvoY" 
```

example offline: 
```
python3 pipeline.py --audio_file test_translation.m4a --video_name test_translation
```


## Usage
```
usage: pipeline.py [-h] [--link LINK] [--video_file VIDEO_FILE] [--audio_file AUDIO_FILE] [--srt_file SRT_FILE] [--download DOWNLOAD]
                   [--output_dir OUTPUT_DIR] [--video_name VIDEO_NAME] [--model_name MODEL_NAME] [-only_srt] [-v]

options:
  -h, --help            show this help message and exit
  --link LINK           youtube video link here
  --video_file VIDEO_FILE
                        local video path here
  --audio_file AUDIO_FILE
                        local audio path here
  --srt_file SRT_FILE   srt file input path here
  --download DOWNLOAD   download path
  --output_dir OUTPUT_DIR
                        translate result path
  --video_name VIDEO_NAME
                        video name, if use video link as input, the name will auto-filled by youtube video name
  --model_name MODEL_NAME
                        model name only support text-davinci-003 and gpt-3.5-turbo
  -only_srt             set script output to only .srt file
  -v                    auto encode script with video
```

## Notice
if you cannot download youtube video, please follow the link below.
https://github.com/pytube/pytube/issues/1498
