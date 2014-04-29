require 'redis'

r = Redis.new
name = ARGV[0]
i=0

loop do
  r.lpush "queue", "hello #{i}, by #{name}"
  i += 1
  sleep 0.1
end
