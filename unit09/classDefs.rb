=begin
Walter Schlosser
CSCI446 - Unit 9

The following defines a simple class that is tested with RSpec
=end

# This is a class used for the RSpec demo which should take an array,
# and provide helpful data like max, min, sum, avg, etc.
class HelpfulArrayCalculations
  attr_reader :array

  def initialize array=nil
    @array = array || []
  end

  def max
    @array.max || 0
  end

  def min
    @array.min || 0
  end

  def sum
    count = 0
    @array.each { |val| count += val }
    count
  end

  def avg
    sum/@array.length
  end

  def hasValues?
    !@array.empty?
  end

  def hasNegatives?
    result = false
    @array.each { |val| if val < 0 then result = true end }
    result
  end
end

# The following two classes are used to demonstrate shared examples
# Both are comparable objects

class Student
  include Comparable

  attr_reader :name, :id

  def initialize(name, id)
    @name = name
    @id = id
  end

  def <=>(other)
    if @id < other.id
      -1
    elsif @id == other.id
      0
    else
      1
    end
  end

end

class Person
  include Comparable

  attr_reader :name, :ssn

  def initialize(name, ssn)
    @name = name
    @ssn = ssn
  end

  def <=>(other)
    if @ssn < other.ssn
      -1
    elsif @ssn == other.ssn
      0
    else
      1
    end
  end
end