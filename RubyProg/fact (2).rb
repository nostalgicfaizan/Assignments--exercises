class Fixnum
  def factorial
    (1..self).inject { |a, b| a * b }
  end
end

puts 4.factorial