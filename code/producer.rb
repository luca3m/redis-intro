require 'redis'

r = Redis.new
name = ARGV[0]

loop do
  msg = "hello by #{name}"
  r.lpush "queue", msg
  puts "Produced: #{msg}"
  sleep 0.1
end
