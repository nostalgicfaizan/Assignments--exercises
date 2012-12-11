puts "enter size of the array"
n=gets.to_i

myArray=Array.new(n)

for i in (0..n)

myArray[i]=gets.chomp.to_i
end

myArray.each{|x| print x*x}