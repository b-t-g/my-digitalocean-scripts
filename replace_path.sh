#!/bin/bash

# A utility function which should replace /usr/local/bin/ruby with
# your path to ruby (assuming it's different).
function setup {
    ruby_path=$(which ruby)
    awk -v ruby_path="$ruby_path" '{gsub(/\/usr\/local\/bin\/ruby/, ruby_path); print > FILENAME}' $1
}
