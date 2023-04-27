from datetime import timedelta
import os
import whisper

class SRT_segment(object):
    def __init__(self, segment) -> None:
        self.start_time_str = str(0)+str(timedelta(seconds=int(segment['start'])))+',000'
        self.end_time_str = str(0)+str(timedelta(seconds=int(segment['end'])))+',000'
        self.segment_id = segment['id']+1
        self.source_text = segment['text']
        self.duration = f"{self.start_time_str} --> {self.end_time_str}"
        self.translation = ""


class SRT_script():
    def __init__(self, segments) -> None:
        self.segments = []
        for seg in segments:
            srt_seg = SRT_segment(seg)
            self.segments.append(srt_seg)
        
    def get_source_only():
        # return a string
        pass

    def write_srt_file(path:str):
        # write srt file to path
        pass

    