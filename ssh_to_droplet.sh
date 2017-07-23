#!/bin/bash -ue

source ./replace_path.sh
setup do_ssh_to_droplet.rb
chmod +x do_ssh_to_droplet.rb
./do_ssh_to_droplet.rb
