class Application
  def call(env)
   resp = Rack::Response.new
   time = Time.zone.now.hour
   if time < 12
     resp.write "Good Morning"
   else
     resp.write "Good Afternoon"
   end
     
  end
end