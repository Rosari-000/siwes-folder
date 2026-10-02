# What is recursion

# Recursion VS iteration (loop)

# # Anatomy of a Recursive Function
# 1. Base Case
# 2. Recursive case

# # an example : Factorial in ruby
# def factorial(n)
#   return 1 if n == 0   # Base case
#   n * factorial(n - 1) # Recursive case
# end

def compound_interest(principal, rate,years)
 return principal if years == 0
 interest = principal * rate
 new_principal = interest + principal
 p new_principal
 compound_interest(new_principal,rate,years-1)
end
compound_interest( 5000, 0.05, 2)




# # Limitations of recursion
# 1. Recursive Depth
# 2.Stack overflow
# 3. Performance
# 4.Readablity