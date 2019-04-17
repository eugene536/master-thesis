#!/bin/bash

if [[ "$1" == "clean" ]]; then
    rm -f master-thesis*.{aux,log,bbl,bcf,blg,run.xml,toc,tct,pdf,out}
    rm -f *.log
else
    xelatex master-thesis
    biber   master-thesis
    xelatex master-thesis
    xelatex master-thesis

    rm -f master-thesis.{aux,log,bbl,bcf,blg,run.xml,toc,tct,out}
fi
