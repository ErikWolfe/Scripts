#!/bin/bash

# Compile and launch a java program, because I'd rather use VIM than Dr Java.
# Run as ./compile.sh <FILELOCATION-FILENAME>

filename=$1

clear

echo "=========================================================================="

printf "\nCompiling $filename...\n"

javac -cp .:../../cs416.jar $filename # -g is for debugging 

compile=$?

file=${filename%.*}

echo "=========================================================================="

if [ $compile -eq 0 ]; then
    printf "\nRunning $file.class...\n\n"
    echo "=========================================================================="
    printf "\n"
    java -cp .:../../cs416.jar $file
    echo "=========================================================================="
    printf "\nChecking Style (may be delayed)...\n\n"
    java -jar ../../checkstyle-5.6-all.jar -c ../../cs416_checkstyle.xml $filename 
else
    echo "There were errors compiling, error code: $compile"
fi

