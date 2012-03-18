require 'sinatra'
require 'json'

before do 
  headers.merge!({
    "content-type" => "application/json; charset=UTF-8",
    "status" => "200 OK",
    "version" => "HTTP/1.1",
  })
  response['Access-Control-Allow-Origin'] = '*'
end

get '/categories' do 
data = <<eos
[
  {
    "id": "123",
    "name": "computer",
    "children": [
      {
        "id": "1",
        "name": "gaming"
      }, 
      {
        "id":"2", 
        "name": "web development"
      }
    ]
  },
  {
   "id": "456",
    "name": "hobby",
    "children": [
      {
        "id": "4",
        "name": "basketball"
      }, 
      {
        "id":"5", 
        "name": "tennis"
      }
    ]
  }
]
eos
end

get '/threads/:id' do
  threads1 = {:id => 123456, :title => "forum engine v 1.0"}
  threads2 = {:id => 12345, :title => "forum engine v 2.0"}
  
  return threads1.to_json if params[:id] == '1'
  return threads2.to_json if params[:id] == '2'
end

