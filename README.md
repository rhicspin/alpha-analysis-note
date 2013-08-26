Image generation
================

Some of the images are generated using malpha program from cnipol.
You will need to your $CNIPOL_RESULTS_DIR dir with root files for alpha measurements using masym program.
To generate malpha plots do:

    export CNIPOL_RESULTS_DIR=/tmp/
    mkdir -p ~/rootmacros/styles/
    ln -s `pwd`/style_malpha.C ~/rootmacros/styles/
    mkdir ${CNIPOL_RESULTS_DIR}/run13_alpha_study
    ln -s `pwd`/run13_alpha_study ${CNIPOL_RESULTS_DIR}/run13_alpha_study/images
    malpha -m run13_alpha_study -o /dev/null -g
