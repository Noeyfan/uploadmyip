#! usr/bin/ruby 
command = system('ifconfig | grep inet > add')
File.open('add', 'r+') do |f|
    #puts f.read
    a = []
    a<<f.read.split()
    f.write(a.flatten[4])
    f.close
end

command = system('git add .; git commit -m "new ip";
		git push')
