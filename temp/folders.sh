#! /usr/bin/ bash

path="/home/kyle/Dropbox/Projects/Python/Exercises/PracticePython"
if [ -d $path ]; then
    echo "Path exists"
else 
    echo "Script path does not exist"
    exit
fi

cd $path

for i in {11..36}; do
    echo "making directory "$i""
    mkdir "$i"
done

echo "directories made"
