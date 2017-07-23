#!/bin/bash -ue

source ./replace_path.sh
setup do_setup.rb
chmod +x do_setup.rb
./do_setup.rb
