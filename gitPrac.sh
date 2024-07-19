#!/bin/zsh

CHECK_FOLDER=$(ls | grep Pages)

CONTENT="<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Git Practice, Current date and time: $(date)</title>
</head>
<body>
    
</body>
</html>"

#!/bin/bash

if [ "$CHECK_FOLDER" = "Pages" ]; then
    cd "$CHECK_FOLDER"
    echo "$CONTENT" > "index.html"
    git add .
    gcom "File created"
    gps
else
    mkdir "Pages"
    cd "Pages"
    touch "index.html"
    echo "$CONTENT" > "index.html"
    git add .
    gcom "File created"
    gps
fi
