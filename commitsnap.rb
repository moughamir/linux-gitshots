#!/usr/bin/env ruby
#

require 'fileutils'

fswebcam_path = `which fswebcam`.strip
exit 0 if fswebcam_path.empty?

print "Snapshotting your pretty mug..."


base_path = File.expand_path("~/.gitshots")
file = File.join(base_path, "#{Time.now.to_f}.jpg")

FileUtils.mkdir_p(base_path)
system("#{fswebcam_path} -r 640x480 --jpeg 85 #{file} -q")

puts "Done"

exit 0