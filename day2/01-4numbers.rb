#works ok for this range, but if lower bound is not at 4n + 1 it won't work
(1..16).each {|i| print "#{i} " ; puts if i % 4 == 0}

puts

#using each_with_index solves the problem of offset, but the problem only allows for each()
(3..18).each_with_index { |i, idx| print "#{i} " ; puts if i % 4 == (i - idx - 1) % 4}
