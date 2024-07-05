# def factorial(num)
#     step = 0
#     (num - 1).times do (step += 1 ;num *= step) end
#     return num
# end

# my_lambda_function = lambda (num) { step = 0
# (num - 1).times do (step += 1 ;num *= step) 
# end 
# puts num}

# def getFactorial = lambda(number) {
#     factorial=1
#     if (number==0)
#       puts "Error! Could not find the factorial of one"
#     else
#       counter =1 
#       while(counter <= number)
#             factorial = factorial * counter 
#           counter += 1
#       end
#     end
#       puts "factorial of #{number} is #{factorial}" }
    
# end
  
 
factorial = lambda { |n| n <= 1 ? 1 : n * factorial.call(n-1) }

result = factorial.call(5)
puts result 
