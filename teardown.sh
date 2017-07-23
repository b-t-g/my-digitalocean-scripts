#!/bin/bash -ue

source ./replace_path.sh
setup do_teardown.rb
chmod +x do_teardown.rb
./do_teardown.rb
