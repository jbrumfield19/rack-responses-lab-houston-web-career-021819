class Application
  def call(env)
   resp = Rack::Response.new
    current_time = Time.now.to_i
  midnight = Time.now.beginning_of_day.to_i
  noon = Time.now.middle_of_day.to_i
   if midnight.upto(noon).inclu
     resp.write "Good Morning"
   else
     resp.write "Good Afternoon"
   end
     
  end
end