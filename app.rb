require "sinatra"

get "/" do
  "Hello world! hogehoge"
end

get "/health_check" do
  "ok"
end