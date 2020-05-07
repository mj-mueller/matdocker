#!/usr/bin/env bash

# Parse
/mat/ParseHeapDump.sh mat/heapdump/*.hprof "$@"

# Compress computed indices
tar -czvf /mat/heapdump/test.tar.gz /mat/heapdump/*.index

# Cleanup
rm /mat/heapdump/*.index