target = rand(10) + 1

puts "I'm thinking of a number between 1 and 10, can you guess what it is?"
while true
    guess = gets.chomp.to_i

    unless (1..10) === guess
        puts 'No, no, no! I said a number BETWEEN 1 and 10'
        next
    end

    if guess == target
        puts 'YES! That\'s correct, you rock!'
        break
    end

    puts 'That\'s too small, try a bit bigger' if guess < target
    puts 'That\'s too big, try a bit smaller' if guess >= target
end
