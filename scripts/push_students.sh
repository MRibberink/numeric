#!/bin/bash
#
# update numeric_students repo master branch
# with contents of students folder
#
rsync -avz notebooks/lab1 students/numeric_notebooks/
rsync -avz notebooks/lab2 students/numeric_notebooks/
rsync -avz notebooks/lab3 students/numeric_notebooks/
rsync -avz notebooks/lab4 students/numeric_notebooks/
rsync -avz notebooks/lab5 students/numeric_notebooks/
rsync -avz notebooks/lab7 students/numeric_notebooks/
rsync -avz utils students/
rsync -avz numlabs students/
rsync -avz Readme_students.md students/Readme.md
mkdir -p students/pyman
rsync -avz $HOME/repos/dj_pine_text/notebooks/*ipynb students/pyman/
rsync -avz $HOME/repos/dj_pine_text/notebooks/images students/pyman/

ghp-import -p -b downloads -r students students  -m "lab 5 update"

