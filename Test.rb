Dir["./src/*.rb"].each {|file| require file }

puts Application::getUserInfo "7imbrook"