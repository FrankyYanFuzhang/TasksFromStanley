#!/bin/bash

targetDir=$1
currentDir=$(basename `pwd`)
mv ../$currentDir ../$targetDir
