require "rack"

class CoolRackApplication
  def call(env)
    http_verb = env["REQUEST_METHOD"]
    status = 200
    headers = {}
    body = ["got #{http_verb} request\n suckerrrrrrrr"]

    [status, headers, body]
  end
end

Rack::Handler::WEBrick.run(CoolRackApplication.new, Port: 9292)
