#!/usr/local/bin/ruby
require 'droplet_kit'

token = File.read('.digital_ocean_api').strip
client = DropletKit::Client.new(access_token: token)

ip = client.droplets.all.first(1)[0].networks.v4[0]['ip_address']
system("ssh freebsd@#{ip}")
