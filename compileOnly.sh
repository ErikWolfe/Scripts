#!/bin/bash

# Compile and launch a java program, because I'd rather use VIM than Dr Java.
# Run as ./compileOnly.sh <FILELOCATION-FILENAME>

filename=$1

clear

printf "\nCompiling $filename...\n"

javac -g -cp .:../../cs416.jar $filename # -g is for debugging 

compile=$?

file=${filename%.*}

if [ $compile -eq 0 ]; then
    printf "\nChecking Style (may be delayed)...\n\n"
    java -jar ../../checkstyle-5.6-all.jar -c ../../cs416_checkstyle.xml $filename 
else
    echo "There were errors compiling, error code: $compile"
fi
