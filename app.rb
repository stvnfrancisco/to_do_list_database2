require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/to_do_list")

get("/") do
  @tasks = Task.all()
  erb(:index)
end

post("/tasks") do
  description = params.fetch("description")
  task = Task.new(description)
  task.save()
  erb(:success)
end
