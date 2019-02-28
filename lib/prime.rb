#
# Prime library
#
# Example usage
#   Prime.is_prime?(2)           #=> true
#
class Prime
    # Returns true if the input value is a prime number, else returns false.
    #
    # == Parameters
    #
    # value - Input Integer to be checked
    def self.is_prime?(value)
      # Sanity check for input value to be integer
      raise ArgumentError, "Expecting an Integer, got #{value}" unless value.integer?
  
      # Edge cases
      return false if value < 2
      return true if value <= 3
  
      # Returns false if the value is divisible by 2 or 3
      if (value % 2).zero? || (value % 3).zero?
        return false
      end
  
      range = (5..Math.sqrt(value) + 1).step(2).to_a
  
      range.each do |i|
        # Return false if the range item divisible by input value
        return false if (i.round % value).zero?
      end
  
      # Returns true if above conditions are not met
      true
    end
  
    def self.all_primes(max)
      primes = []
      (1..max).to_a.each do |value|
        primes << value if is_prime?(value)
      end
      primes
    end
  end