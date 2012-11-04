#works ok for this range, but if lower bound is not at 4n + 1 it won't work
(1..16).each {|i| print "#{i} " ; puts if i % 4 == 0}
