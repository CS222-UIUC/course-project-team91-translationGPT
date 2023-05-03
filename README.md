# Project T: Video Translation Tool

## Introduction

Project T is a fantastic video translation tool that leverages OpenAI's GPT model to translate English videos into Chinese. This tool is a step ahead of existing software's ability to create bilingual subtitle files in SRT and ASS formats, and embeds translated subtitles directly into video files. This project aims to simplify and automate the video translation process, thereby breaking language barriers and promoting global content accessibility.

## Technical Architecture

The architecture of Project T is designed to ensure smooth and effective operation. It primarily includes the following components:

1. **YouTube Video Downloader and Audio Extractor**: This component is responsible for fetching and downloading YouTube videos and extracting their audio content. It interacts with the YouTube API using the 'pytube' library.

2. **Transcription Module**: It transcribes the extracted audio to create English SRT subtitle files. It interacts with the GPT model for transcribing the audio.

3. **Translation Module**: This component translates English subtitles into Chinese using OpenAI's GPT model.

4. **Subtitle File Generator**: This module generates bilingual SRT and ASS subtitle files. It uses the 'SRT' and 'stable-whisper' libraries for this purpose.

5. **Subtitle Embedder**: This optional component embeds the translated subtitles into the video file. It requires FFmpeg to function.

Refer to the attached architecture diagram for a visual understanding of the system. The Python programming language, along with various libraries such as pytube, openai, argparse, tqdm, SRT, stable-whisper, ffmpeg, and streamlit, was used to build these components.

![alt text](doc/23371683049607_.pic.jpg "LYC")

## Installation and Usage

Before installation, ensure you have Python 3.8-3.10 installed on your system. Next, clone the repository and install the required packages:

``` bash
pip install -r requirement.txt
```

example online:

``` python
python3 pipeline.py --link "https://www.youtube.com/watch?v=9pArcK9TvoY" 
```

example offline:

``` python
python3 pipeline.py --audio_file test_translation.m4a --video_name test_translation
```

``` python
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

## Group Members and Roles

- **Member 1**: Responsible for designing and implementing the YouTube Video Downloader and Audio Extractor module. Also contributed to project documentation.

- **Member 2**: Developed the Transcription and Translation Modules. Worked extensively with OpenAI's GPT model to ensure accurate transcriptions and translations.

- **Member 3**: Implemented the Subtitle File Generator and Subtitle Embedder modules. Also handled the integration of FFmpeg into the project.

- **Member 4**: Managed project coordination and scheduling. Also responsible for coding standards and quality assurance in the project.Oversaw the project's installation and usage documentation. Also contributed to the development and testing of the project.
