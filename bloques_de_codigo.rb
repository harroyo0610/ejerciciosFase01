def do_this_block
    block = yield
end

puts do_this_block { 1+1 }

name = "Fernando"

do_this_block do 
    time1 = Time.now
    puts sleep 1
    time2 = Time.now
    puts time_final = time2 - time1
    puts name * 2
end
