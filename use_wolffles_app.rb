require "./wolffles_sinatra"

get "/" do
  "hey there!"
end

Rack::Handler::WEBrick.run Wolffles::Application, Port:9292
