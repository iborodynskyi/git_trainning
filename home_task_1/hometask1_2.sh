#!/bin/bash

cd hometask1_1repo
git revert --no-commit HEAD~2..
git reset --soft HEAD~1
git reset --mixed HEAD~1
git reset --hard HEAD~1
echo '*.txt' >> .gitignore
echo $(git ls-files) > tracked_files
echo $(git ls-files -o) > untracked_files
git reset --soft HEAD~1
git add tracked_files untracked_files
git commit -m "tracked_files, untracked_files added"
git log > ../log1_2
git show > ../show1_2