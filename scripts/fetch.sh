#!/usr/bin/env bash

cd ~

echo "----------------------------"
echo "Fetching Repository"
echo "----------------------------"

mkdir scm_artifact

cat > scm_artifact/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
  <title>Canary</title>
  <style>
    body {background-color: 000000; margin: 0px;}
    #canary {display: block; width:100%;}
    #text_div {position: absolute; right: 20px; top: 20px;}
    #text_div div {color: #FFFFFF; font-weight: bold; font-size: x-large;}
  </style>
</head>
<body>
<img id="canary" title="canary" src="nature-branch-bird-wildlife-beak-yellow-700939-pxhere.com.jpg" />
<div id="text_div">
  <div id="year_div">year not set</div>
  <div id="month_div">month not set</div>
  <div id="day_div">day not set</div>
  <div id="time_div">time not set</div>
  <div id="seconds_div">seconds not set</div>
</div>
</body>
</html>
EOF

# Fetch image for canary website
curl -o canary.jpg https://github.com/IsaacChapman/docker-canary/raw/b6ccb187d7cb5f701363efda1dc6558df8a3db9c/web/nature-branch-bird-wildlife-beak-yellow-700939-pxhere.com.jpg

echo "----------------------------"
echo "Repository Fetched"
echo "----------------------------"

tar -cvf scm_artifact.tar scm_artifact
ls -l
