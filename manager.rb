# # so what does a manager do?
# # a manager is the same as an employee but it can also "send reports"

# class Employee
#   attr_reader :first_name, :salary, :active, :last_name
#   attr_writer :first_name

#   def initialize(input_options)
#     @first_name = input_options[:first_name]
#     @last_name = input_options[:last_name]
#     @active = input_options[:active]
#     @salary = input_options[:salary]
#   end

#   def print_info
#     p "#{first_name} #{@last_name} makes $#{@salary} per year."
#   end

#   def give_annual_raise
#     @salary *= 1.05
#   end
# end

# employee1 = Employee.new(
#   {
#     :last_name => "Carter",
#     :active => true,
#     :first_name => "Majora",
#     :salary => 80000,
#   }
# )
# # employee1.print_info

# # p employee1.salary
# # employee1.print_info

# employee2 = Employee.new({ first_name: "Danilo", last_name: "Campos", active: false, salary: 90000 })
# # employee2.print_info

# # Don't
# # Repeat
# # Yourself

# # write
# # everything
# # twice

# # ------------

# class Manager < Employee
#   def send_report
#     p "#{first_name} needs me to send the report to him!"
#     # some logic here i'm not going to write
#     p "just sent all the reports"
#   end
# end

# manager1 = Manager.new(first_name: "Manny", last_name: "Williams", active: true, salary: 100000)

# manager1.print_info
# manager1.send_report

class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({ first_name: "Majora", last_name: "Carter", salary: 80000, active: true })
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

class Manager < Employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end
end

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report
