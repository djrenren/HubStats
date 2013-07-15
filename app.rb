require 'sinatra'
require 'haml'
Dir["./src/*.rb"].each {|file| require file }

get '/' do

	return Application::getUserInfo("7imbrook")  

end
