#!/usr/bin/env ruby
Dir.chdir("uploadmyip") unless Dir.getwd =="/root/uploadmyip"
command = system('ifconfig | grep inet > ip')
File.open('ip', 'r+') do |f|
    #puts f.read
    a = []
    a<<f.read.split()
    f.write(a.flatten[4])
    f.close
end

command = system('git add .; git commit -m "buer PI address";
		git push')
