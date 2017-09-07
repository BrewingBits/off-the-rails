application = proc do
  json = { 'message' => 'Hello, world!' }
  header = { 'Content-Type' => 'application/json' }
  status = 200

  [status, header, [json.to_s]]
end

run application
