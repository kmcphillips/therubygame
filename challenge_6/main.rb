require 'time'

solutions = Dir.glob("morse_to_eng_*.rb").reject{|x| x =~ /_spec\.rb$/ }.map{|x| x.gsub(/\.rb$/, '')}

solutions.each do |s|
  require File.join(File.dirname(__FILE__), s)
end


input = ".... . .-.. .--.   -- .   --- ..- -   --- ..-.   - .... .. ...   .-- . .-.. .-.."
iterations = 3000

solutions.each do |solution|

  puts "Solution: #{solution}"

  3.times do
    start = Time.now

    iterations.times do 
      send solution, input
    end

    finish = Time.now

    puts "  Completed #{iterations} iterations in #{finish - start}"
  end

  puts ""
end
