require 'pry'
# Implement your procedural solution here!


# What is the largest palindrome product 
# of two three-digit numbers?

def check_if_palindrome(n)
  palindrome = n.to_s.split("").reverse.join.to_i 
  true if n == palindrome 
end

def get_palindromes
  palindromes = []
  999.downto(100) do |n1|
    n1.downto(100) do |n2|
      if check_if_palindrome(n1 * n2)
        palindromes << n1 * n2
      end
    end
  end
  palindromes
end

#WANT TO TRY TO GET THIS TO WORK LATER....

# def find_products
  

#   product = 0
#   placeholder = 0
#   i = 0
#   n1 = 999
#   while n1 >= 100
#     n2 = 999 - i
    
#     if check_if_palindrome(n1 * n2)
#       product = n1 * n2
#         if product > placeholder
#           placeholder = product
#         end
#       end

#     if check_if_palindrome(n2 * n2) == true
#       product = n2 *n2 
#         if product > placeholder
#           placeholder = product
#         end
#       end
    
#     if check_if_palindrome(n1 * n1) == true
#       product = n1 *n1 
#         if product > placeholder
#           placeholder = product
#         end
#       end
#     end
    
#     n1 -= 1
#     i += 1


#  return product

# end


def largest_palindrome_product
  get_palindromes.max
end