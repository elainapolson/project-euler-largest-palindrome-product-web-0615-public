class LargestPalindromeProduct

  attr_accessor :answer

  def initialize
    @palindromes = []
    @answer = 0
    get_palindromes
  end

  def check_if_palindrome(n)
    palindrome = n.to_s.split("").reverse.join.to_i 
    true if n == palindrome 
  end

  def get_palindromes
    999.downto(100) do |n1|
      n1.downto(100) do |n2|
        if check_if_palindrome(n1 * n2)
          @palindromes << n1 * n2
        end
      end
    end
    @answer = @palindromes.max
  end

end