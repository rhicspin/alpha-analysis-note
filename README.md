[![Build Status](https://travis-ci.org/rhicspin/alpha-analysis-note.png?branch=master)](https://travis-ci.org/rhicspin/alpha-analysis-note)

[View PDF](https://wiki.bnl.gov/rhicspin/File:PC-alpha-analysis-note.pdf)

Image generation
================

Some of the images are generated using malpha program from cnipol.
malpha plots generation process goes this way:

    export CNIPOL_RESULTS_DIR=/tmp/ # path where you put asym utility output files
    mkdir -p ~/rootmacros/styles/
    ln -s `pwd`/style_malpha.C ~/rootmacros/styles/
    mkdir ${CNIPOL_RESULTS_DIR}/run13_alpha_study
    ln -s `pwd`/run13_alpha_study ${CNIPOL_RESULTS_DIR}/run13_alpha_study/images
    malpha -m run13_alpha_study -o /dev/null -g
