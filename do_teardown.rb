#!/usr/local/bin/ruby
require 'droplet_kit'
token = File.read('.digital_ocean_api').strip
client = DropletKit::Client.new(access_token: token)

## Before we do anything, delete any currently existing snapshots
client.snapshots.all.each do |snap|
  puts snap.id
  client.snapshots.delete(id: snap.id)
end

droplet = client.droplets.all.first(1)[0]
client.droplet_actions.snapshot(droplet_id: droplet.id, name: Date.today.to_s)
client.droplets.delete(id: droplet.id)
