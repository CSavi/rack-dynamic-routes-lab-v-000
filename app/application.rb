class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack:Request.new(env)

    unless req.path == "/items"
      resp.write "Route not found"
      resp.status = 404
    else
      req.path
    end
  end

end
