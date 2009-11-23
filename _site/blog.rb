# blog.rb 
require 'rubygems' 
require 'sinatra' 

set :root, File.dirname(__FILE__)
set :static, true
set :public, Proc.new { File.join(File.dirname(__FILE__), "_site") } 


get "/" do
  redirect '/index.html'
end
