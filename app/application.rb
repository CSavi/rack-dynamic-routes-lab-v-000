class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack:Request.new(env)

    if req.path.match(/items/)

      req.path.split("/items/").last 


      resp.write "Route not found"
      resp.status = 404
    else
      req.path
    end
  end

end
