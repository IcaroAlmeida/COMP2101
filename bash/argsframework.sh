#!/bin/bash

# This script provides a generic command line processor
#   for inclusion in future scripts I write

[ "$debug" -gt 0 ] && echo "Found $# things on the command line"
while [ $# -gt 0 ]; do
  [ "$debug" -gt 0 ] && echo "Processing '$1'"
  case "$1" in
    -h|--help)
      echo "Usage: $0 [-h|--help] [-d N|--debug N]"
      exit 0
      ;;
    -d|--debug)
      debug="$2"
      [ "$debug" -gt 0 ] && echo "Assigned '$2' to debug variable"
      shift
      [ "$debug" -gt 0 ] && echo "Shifted an extra argument off the command line"
      if [-z "$debug"]; then
        echo "You have to give me a debug level if you give me the debug option" >&2
        echo "Usage :$0 [-h|--help] [-d N|--debug N]"
        exit 1
      fi
      ;;
    *)
      echo "I didn't understand '$1'" >&2
      echo "Usage :$0 [-h|--help] [-d N|--debug N]"
      exit 1
      ;;
  esac
  [ "$debug" -gt 0 ] && echo "Processed '$1'" >&2
  exit 1
  ;;
esac
[ "$debug" -gt 0 ] && echo "Processed '$1'"
  shift
done

echo "Done processing command line"
[ "$debug" -gt 0 ] && echo "Debud mode turned on and set to $debug"
