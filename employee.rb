# model an employee using ruby
# Majora Carter makes $80000 per year

# how can I model an employee using ruby?

# array
# hash
# class

# first name, last name, active status, salary

# employee = ["Majora", "Carter", true, 80000]

# p employee[0] + " " + employee[1] + " makes $" + employee[3].to_s + " per year."

# employee2 = ["Danilo", "Campos", false, 90000]

# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[3]} per year."

employee1 = { "first_name" => "Majora", "last_name" => "Carter", "active" => true, "salary" => 80000 }
p "#{employee1["first_name"]} #{employee1["last_name"]} makes $#{employee1["salary"]} per year."

employee2 = { :first_name => "Danilo", :last_name => "Campos", :active => false, :salary => 80_000 }
p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."

employee2_fancy = { first_name: "Danilo", last_name: "Campos", active: false, salary: 80_000 }
p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."

p employee2 == employee2_fancy
