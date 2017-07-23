#!/usr/local/bin/ruby
require 'droplet_kit'


token = File.read('.digital_ocean_api').strip
ssh_key = File.read('.ssh_key').strip
client = DropletKit::Client.new(access_token: token)

snapshot = client.snapshots.all.first(1)[0].id.to_i
droplet = DropletKit::Droplet.new(
  name: Date.today.to_s,
  region: "nyc3",
  size: "1gb",
  image: snapshot,
  ipv6: true,
  ssh_keys: [ssh_key])
client.droplets.create(droplet)
ip_address = client.droplets.all.first(1)[0].networks.v4[0]['ip_address']
puts "Waiting for droplet to be created to ssh into it."
# Wait for droplet to be created
sleep(1.minutes)
system("ssh freebsd@#{ip}")
