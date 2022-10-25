#!/bin/bash

CACHE_CLEAN="` apt-get autoclean > /dev/null && \
               apt-get autoremove > /dev/null && \
               apt-get clean > /dev/null  && \
               rm -rf /var/lib/apt/lists/* > /dev/null`"

if  echo "$CACHE_CLEAN"; then
  echo "clean cache done: `date`." >> /home/hesher/done.log
else 
  echo "FAIL"
fi
