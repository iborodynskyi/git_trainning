#!/bin/bash

mkdir hometask1_1repo
cd hometask1_1repo
git config --global user.name "iborodynskyi"
git config --global user.email "ivan.borodynskyi@plvision.eu"
git init
touch my_file untracked_files tracked_files text1.txt text2.txt .gitignore
for t in {1..5}
do
echo $t >> my_file
git add my_file
git commit -m "$t added"
done
git log > ../log1_1
git show > ../show1_1