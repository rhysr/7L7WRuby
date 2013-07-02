print 'Enter search phrase: '
search = gets.chomp

filename = File.join(File.expand_path(File.dirname(__FILE__)), 'shunned-house-hplovecraft.txt')
File.open(filename, 'r') do |f|
    idx = 0
    while (line = f.gets())
        idx += 1
        print "#{idx}: #{line}" if /#{search}/.match(line)
    end
end
