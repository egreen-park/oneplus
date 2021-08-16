#!/usr/bin/bash

export PASSIVE="0"
sed -i -e 's/\r$//' ./launch_chffrplus.sh
exec ./launch_chffrplus.sh

