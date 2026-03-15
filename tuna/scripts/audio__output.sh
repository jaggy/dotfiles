#!/bin/bash

DEVICE="${1:?Usage: $0 <device_name>}"

if ! command -v SwitchAudioSource &>/dev/null; then
  echo "SwitchAudioSource not found. Install it with: brew install switchaudio-osx"
  exit 1
fi

SwitchAudioSource -s "$DEVICE" -t output && echo "Switched output to: $DEVICE"
