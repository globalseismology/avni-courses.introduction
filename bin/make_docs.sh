#!/bin/tcsh
conda activate fall2022-sef
jupyter-book clean . --all
jupyter-book build -W -n --keep-going .
rsync -rv _build/html/* pm5113@dwar.princeton.edu:~/web/courses/avni-intro/v0.1.0/
