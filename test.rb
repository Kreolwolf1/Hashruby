require "hashruby"

startTime = Time.now
  hash = HashRuby.new
  for i in 1..500
    key = "test#{i}"
    value = "value#{i}"
    hash.set(key,value)
  end
  for i in 1..500
    key = "test#{i}"
    buff = hash.get(key)
  end


duration = Time.now - startTime  
puts "\nAll time #{duration.to_s} sec. for hashruby"

startTime = Time.now

  hash = {}
  for i in 1..500
    key = "test#{i}"
    value = "value#{i}"
    hash[key] = value 
  end

  for i in 1..500
    key = "test#{i}"
    buff = hash[key] 
  end

duration = Time.now - startTime  
puts "\nAll time #{"%10.10f" % duration.to_f} sec. for default hash"