#works ok for this range, but if lower bound is not at 4n + 1 it won't work
(1..16).each {|i| print "#{i} " ; puts if i % 4 == 0}

puts

#using each_with_index solves the problem of offset, but the problem only allows for each()
(3..18).each_with_index { |i, idx| print "#{i} " ; puts if (idx + 1) % 4 == 0}

puts

#looking closer at the question, it doesn't state 16 consecutive numbers
idx = 0
[1,2,3,3,3,4,5,7,8,10,12,12,13,14,15,15].each do |i|
    print i, ' '
    puts if (idx + 1) % 4 == 0
    idx += 1
end
