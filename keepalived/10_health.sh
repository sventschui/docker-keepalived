#!/bin/bash

if [ "$CHECK_PORT" != "" ]; then
  telnet ${CHECK_HOST:-127.0.0.1} $CHECK_PORT || exit 1 
fi

if [ "$CHECK_PID" != "" ]; then
  pidof $CHECK_PID || exit 1
fi

