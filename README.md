# my-digitalocean-scripts
Scripts I use for DigitalOcean **use at your own risk!**

On the off chance someone else comes across this, I thought I'd give an extra disclaimer/explanation in addition to what the BSD license
# Intended behavior
Have at most one droplet at any given time.
Have at most one snapshot at any given time **(It will destroy ALL snapshots on the account before taking a new one).**
Only deploy the 1gb droplet (currently the second cheapest one).

And, of course, there may be undocumented behavior.

Now that we have all that scary stuff out of the way, let's talk about how to use these things!

My ruby is installed at /usr/local/bin/ruby, if that is not the case, use the .sh versions of the scripts. If your ruby install location is the same, you can use either the ruby or shell versions.

Dependencies:
Ruby (no specific version required except for those required by Droplet_kit)
Droplet_kit
Awk (if using the .sh versions).
