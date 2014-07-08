# require 'pry'

# EXAMPLE 1
# def returnHello(taco)
#   binding.pry
#   "Hello #{taco}."
# end 

# def greetAndReply(name1, name2)
#   if name2 == "stop"
#     return "#{name1}, sorry I can't greet you anymore. Sexy!!"
      # base case, stops from creating additional stack frames infinitely.
#   else
#     hello_str = ""
#     binding.pry
#     hello_str = returnHello(name1)
#     binding.pry
#     "#{hello_str} My name is #{name2}. #{greetAndReply(name1, 'stop')}"
      # recursion => function that calls itself. 
#   end
# end 

# binding.pry
# puts greetAndReply("Tim", "Carina")

# EXAMPLE 2: Factorial method.

# def regularFactorial(num) 
#   i = 0 
#   total = 1
#   while i < num 
#     total = total * (num-i)
#     i += 1 
#   end
#   total
# end  

# def recursiveFactorial(num)
#   if num <= 1
#     return 1
#   else
#     num * factorial(num - 1)
#   end
# end

def fibonacci(position, cache={}) 
  if position == 0
    cache[0] = 0
    return 0 
  elsif position == 1 or position == 2
    cache[1] = 1
    cache[2] = 1
    return 1
  else
    if cache.has_key?(position-1)
      fib1 = cache[position-1]
    else
      fib1 = fibonacci(position - 1, cache)
      cache[position -1] = fib1
    end

    if cache.has_key?(position-2)
      fib2 = cache[position-2]
    else
      fib2 = fibonacci(position - 2, cache)
      cache[position - 2] = fib2
    end

    return fib1 + fib2
    #return fibonacci(position-1) + fibonacci(position-2)
  end
  
end

puts fibonacci(36)


