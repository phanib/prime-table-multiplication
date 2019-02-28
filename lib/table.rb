#
# Table
#
# Example usage
#   Table.pretty_print(numbers)
#
# Sample Output
#     |   2   3   5
# ----+------------
# 2  |   4   6   10
#
# 3  |   6   9   15
#
# 5  |   10  15  25
class Table
    # Prints table in pretty format
    #
    # == Parameters
    #
    # numbers - Array of numbers for multiplication table
    def self.pretty_print(numbers)
      size = numbers.count
      puts "    |" + (" %3d" * size) % numbers
      puts "----+" + "----" * size
  
      numbers.each do |row|
        print " %-3d|  " % row
        numbers.each {|column| print " %-3d" % (column * row)}
        print "\n\n"
      end
    end
  end