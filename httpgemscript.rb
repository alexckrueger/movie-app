require 'http'

response = HTTP.get("http://localhost:3000/movies")

pp response.parse(:json)