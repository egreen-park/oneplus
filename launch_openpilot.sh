#!/usr/bin/bash

export PASSIVE="0"
exec ./launch_chffrplus.sh

if [ -f /EON ]; then
  exec ./scripts/init_eon.sh
elif [ -f /TICI ]; then
  exec ./launch_chffrplus.sh
fi