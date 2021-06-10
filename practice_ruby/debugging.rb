# # exercise 1
# p "Hello!"
# greeting = gets.chomp
# if greeting == "Arrr!"
#   puts “Go away, pirate.”
# elsif puts "Greetings, hater of pirates!"
# end

# exercise 2
dickens = ["Charles Dickens", 1870]
thackeray = ["William Thackeray", 1863]
trollope = ["Anthony Trollope", 1882]
hopkins = ["Gerard_Manley_Hopkins", 1889]
def died(array)
  name = array[0]
  year = array[1]
  "#{name} died in #{year}."
end
p died(dickens)
p died(thackeray)
p died(trollope)
p died(hopkins)