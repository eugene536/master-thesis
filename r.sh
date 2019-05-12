#!/bin/bash

if [[ "$1" == "clean" ]]; then
    rm -f master-thesis*.{aux,log,bbl,bcf,blg,run.xml,toc,tct,pdf,out}
    rm -f *.log
else
    cd /home/eugene/university/master-thesis
    xelatex -interaction=nonstopmode master-thesis
    biber   master-thesis
    xelatex -interaction=nonstopmode master-thesis
    xelatex -interaction=nonstopmode master-thesis

    rm -f master-thesis.{aux,log,bbl,bcf,blg,run.xml,toc,tct,out}
fi
