class Student

  def rollno=(rollno)
      @rollno = rollno
      end

def rollno
@rollno
end

   def name=(name)
	@name = name
	end
def name 
@name =name
end

   def age=(age)
        @age =age
        end

def age
@age =age
end

   def gender=(gender)
       @gender= gender
       end
def gender
@gender= gender
end
    
end 

def sortONbasis

# make an Array of student
student1 = Array.new
student1 << {'rollno'=>'01','name'=>'rahul', 'age'=>14}
student1 << {'rollno'=>'02','name'=>'Aakash', 'age'=>16}
student1 << {'rollno'=>'03','name'=>'Arpit', 'age'=>13}
student1 << {'rollno'=>'04','name'=>'faizan', 'age'=>17}

# the student sorted by name
n = student1.sort_by { |k| k['name'] }
# the student sorted by age
a = student1.sort_by { |k| k['age'] }

# the student sorted by rollno 
r = student1.sort_by {|k| k['rollno']}

puts "Sorted by rollno"
puts r
puts "Sorted by name"
puts n
puts "Sorted by age"
puts a
end
end
s = Student.new
s.sortONbasis
