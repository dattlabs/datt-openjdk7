#!/bin/bash

java_version=`java -version 2>&1 | grep "^java version" | grep -oP '\K"(.*?)"' | tr -d '"'`
[[ "$java_version" = "1.7.0_51" ]] && exit 0 || { echo "Incorrect version: $java_version."; exit 1; }
