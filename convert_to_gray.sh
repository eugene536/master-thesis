#!/bin/bash
gs \
 -sOutputFile=gray.pdf \
 -sDEVICE=pdfwrite \
 -sColorConversionStrategy=Gray \
 -dProcessColorModel=/DeviceGray \
 -dCompatibilityLevel=1.4 \
 -dNOPAUSE \
 -dBATCH \
 master-thesis.pdf
