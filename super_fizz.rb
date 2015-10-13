# In this assignment you'll implement an algorithm that is actually used in some programmer interviews. And the really shocking part is that some people fail it! This is an extension of the FizzBuzz problem. Write an implementation of the following algorithm.
#
# Iterate through the numbers 0 through 1000 and for each one print out exactly one thing. These rules are in descending priority:
#
# If it's evenly divisible by 3, 5, and 7 print SuperFizzBuzz
# If it's evenly divisible by 3 and 7 print SuperFizz
# If it's evenly divisible by 5 and 7 print SuperBuzz
# If it's evenly divisible by 3, print Fizz
# If it's evenly divisible by 5, print Buzz
# If it's evenly divisible by 7, print Super
# Otherwise print just the number
# First try to implement the algorithm in the clearest way you can.
#
# Once you get that working, create a second version that uses as few instructions/lines as you can.
#
# (1..1000).each do |num|
#   case
#   when num % 3 == 0 && num % 5 == 0 && num % 7 == 0
#       puts "SuperFizzBuzz"
#   when num % 3 == 0 && num % 5 == 0
#     puts "SuperFizz"
#   when num % 5 == 7 && num % 7 == 0
#     puts "SuperBuzz"
#   when num % 3 == 0
#     puts "Fizz"
#   when num % 5 == 0
#     puts "Buzz"
#   when num % 7 == 0
#     puts "Super"
#   else
#     puts num
#   end
# end

def sfb(num)
  if num % 3 == 0 && num % 5 == 0 && num % 7 == 0
    "SuperFizzBuzz"
  else
    num
  end
end

def sf(num)
  if num % 3 == 0 && num % 5 == 0
    "SuperFizz"
  else
    num
  end
end

def sb(num)
  if num % 5 == 7 && num % 7 == 0
    "SuperBuzz"
  else
    num
  end
end

def fizz(num)
  if num % 3 == 0
    "Fizz"
  else
    num
  end
end

def buzz(num)
  if num % 5 == 0
    "Buzz"
  else
    num
  end
end

def sooper(num)
  if num % 7 == 0
    "Super"
  else
    num
  end
end

(1..1000).each { |num| puts sooper(buzz(fizz(sb(sf(sfb(num)))))) }
