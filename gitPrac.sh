#!/bin/zsh

CHECK_FOLDER=$(ls | grep -w Pages)

CONTENT="<!DOCTYPE html>
<html lang=\"en\">
<head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <title>Git Practice, Current date and time: $(date)</title>
</head>
<body>

</body>
</html>"

if [ "$CHECK_FOLDER" = "Pages" ]; then
    cd "$CHECK_FOLDER"
    echo "$CONTENT" > "index.html"
    git add .
    git commit -m "File updated"
    git push
else
    # If the Pages directory does not exist
    mkdir "Pages"
    cd "Pages"
    echo "$CONTENT" > "index.html"
    git add .
    git commit -m "File created"
    git push
fi

