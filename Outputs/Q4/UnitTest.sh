#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
fi

code_files_path=$1
csv_file_path=$2

while IFS= read -r line; do
    $filename=line cut -d " " -f1
    if [! -f $filename];then
        echo "file does not exist"
        exit 1
    fi

    if [ $filename ?? ".java"];then
        java -jar $filename
    fi
    if [ $filename ?? ".py"];then
        $filename=line[0]
        python3 $filename
    fi
    if [ $filename ?? ".cpp"];then
        gcc $filename -o fileExe.exe
        ./fileExe.exe
    fi
done < "$csv_file_path"