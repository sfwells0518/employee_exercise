# so what does a manager do?
# a manager is the same as an employee but it can also "send reports"

class Employee
  attr_reader :first_name, :salary, :active, :last_name
  attr_writer :first_name

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @active = input_options[:active]
    @salary = input_options[:salary]
  end

  def print_info
    p "#{first_name} #{@last_name} makes $#{@salary} per year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

employee1 = Employee.new(
  {
    :last_name => "Carter",
    :active => true,
    :first_name => "Majora",
    :salary => 80000,
  }
)
# employee1.print_info

# p employee1.salary
# employee1.print_info

employee2 = Employee.new({ first_name: "Danilo", last_name: "Campos", active: false, salary: 90000 })
# employee2.print_info

# Don't
# Repeat
# Yourself

# write
# everything
# twice

# ------------

class Manager < Employee
  def send_report
    p "sending report...."
    # some logic here i'm not going to write
    p "just sent all the reports"
  end
end

manager1 = Manager.new(first_name: "Manny", last_name: "Williams", active: true, salary: 100000)

manager1.print_info
manager1.send_report
